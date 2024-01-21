# Web-App-DevOps-Project

Welcome to the Web App DevOps Project repo! This application allows you to efficiently manage and track orders for a potential business. It provides an intuitive user interface for viewing existing orders and adding new ones.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Technology Stack](#technology-stack)
- [Contributors](#contributors)
- [Feature Reversion](#feature-reversion)
- [Dockerization](#dockerization)
- [Networking Services with Terraform](#Networking-Services-with-Terraform)
- [License](#license)

## Features

- **Order List:** View a comprehensive list of orders including details like date UUID, user ID, card number, store code, product code, product quantity, order date, and shipping date.
  
![Screenshot 2023-08-31 at 15 48 48](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/3a3bae88-9224-4755-bf62-567beb7bf692)

- **Pagination:** Easily navigate through multiple pages of orders using the built-in pagination feature.
  
![Screenshot 2023-08-31 at 15 49 08](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/d92a045d-b568-4695-b2b9-986874b4ed5a)

- **Add New Order:** Fill out a user-friendly form to add new orders to the system with the necessary information.
  
![Screenshot 2023-08-31 at 15 49 26](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/83236d79-6212-4fc3-afa3-3cee88354b1a)

- **Data Validation:** Ensure data accuracy and completeness with required fields, date restrictions, and card number validation.

## Getting Started

### Prerequisites

For the application to successfully run, you need to install the following packages:

- flask (version 2.2.2)
- pyodbc (version 4.0.39)
- SQLAlchemy (version 2.0.21)
- werkzeug (version 2.2.3)

### Usage

To run the application, you simply need to run the `app.py` script in this repository. Once the application starts you should be able to access it locally at `http://127.0.0.1:5000`. Here you will be meet with the following two pages:

1. **Order List Page:** Navigate to the "Order List" page to view all existing orders. Use the pagination controls to navigate between pages.

2. **Add New Order Page:** Click on the "Add New Order" tab to access the order form. Complete all required fields and ensure that your entries meet the specified criteria.

## Technology Stack

- **Backend:** Flask is used to build the backend of the application, handling routing, data processing, and interactions with the database.

- **Frontend:** The user interface is designed using HTML, CSS, and JavaScript to ensure a smooth and intuitive user experience.

- **Database:** The application employs an Azure SQL Database as its database system to store order-related data.

## Contributors 

- [Maya Iuga]([https://github.com/yourusername](https://github.com/maya-a-iuga))

## Feature Reversion

While we initially added the "delivery_date" column to enhance our delivery tracking functionality, it has been determined that, for the current phase of our project, this feature is no longer necessary. However, software development is an evolving process, and there may be future requirements or scenarios where the "delivery_date" feature becomes relevant again.

### How the "delivery_date" Feature Works

The "delivery_date" feature, when active, allowed us to:

- Capture and store delivery date information for orders in our Azure SQL Database.
- Display delivery dates alongside order details in the user interface, providing valuable insights into our delivery process.
- Ensure data accuracy and completeness with required fields, date restrictions, and card number validation.

### Future Utilization

While the "delivery_date" feature has been reverted for now, it remains well-documented within our codebase. Should the need for this feature arise again in the future, developers can refer to the existing code and documentation to quickly reintegrate it into our application.

Additionally, the version control history and this documentation serve as valuable references for understanding the feature's previous implementation.

As our project evolves, we prioritize adaptability and efficient development processes, ensuring that we can easily respond to changing requirements and incorporate previously developed features when necessary.

We encourage the team to keep an eye on project discussions and requirements, as the "delivery_date" feature may find its way back into our application in future iterations.

## Dockerization

### Containerization Process

We have containerized our application using Docker. Below are the steps taken to build the application's Dockerfile:

#### Step 1: Base Image Selection
We use an official Python runtime as the parent image, specifically `python:3.8-slim`.

#### Step 2: Set the Working Directory
We set the working directory in the container to `/app`, a common practice for web applications.

#### Step 3: Copy Application Files
We copy the contents of our local directory into the container's `/app` directory to ensure that our application code and files are available within the container.

#### Step 4: Install System Dependencies and ODBC Driver
We update the package list and install necessary system dependencies, including the ODBC driver, to enable database connectivity.

#### Step 5: Install pip and setup tools
We upgrade pip and setup tools, which are required for managing Python packages.

#### Step 6: Install Python Packages from requirements.txt
We install Python packages specified in the `requirements.txt` file, which contains all the necessary packages for running the application successfully.

#### Step 7: Expose Port
We expose port 5000 to make the Flask application accessible from outside the container.

#### Step 8: Define Startup Command
We specify the command to execute when the container launches, which is to run the `app.py` file using Python.

### Docker Commands

Throughout the project, we have used various Docker commands for building, running containers, tagging, and pushing to Docker Hub. Here are some examples and explanations for each command:

- `docker build -t my-flask-app .`: Builds a Docker image from the Dockerfile with the tag `my-flask-app`. The `.` specifies that the Dockerfile is in the current directory.

- `docker run -p 8080:5000 my-flask-app`: Runs a container from the `my-flask-app` image, mapping port 8080 on the host to port 5000 in the container.

- `docker tag my-flask-app my-docker-hub-username/my-flask-app:v1`: Tags the `my-flask-app` image with a version `v1` and associates it with your Docker Hub repository.

- `docker push my-docker-hub-username/my-flask-app:v1`: Pushes the tagged image to your Docker Hub repository for sharing and deployment.

## Networking Services with Terraform

Thoroughly documenting the process of defining networking services using Infrastructure as Code (IaC) is crucial for understanding and maintaining your project. This section provides an overview of the steps taken to define networking resources using Terraform within this project, including details on each resource, its purpose, and any dependencies. It also covers the input and output variables used throughout the networking module.

### Terraform Networking Module

In this project, we use Terraform to provide Azure networking services for an Azure Kubernetes Service (AKS) cluster. These services include:

1. **Azure Resource Group**:
   - Purpose: To logically group Azure resources.
   - Variable: `resource_group_name`

2. **Virtual Network (VNet)**:
   - Purpose: To create a Virtual Network that will house our AKS cluster.
   - Variable: `vnet_address_space`

3. **Control Plane Subnet**:
   - Purpose: A subnet within the VNet dedicated to the control plane components of the AKS cluster.
   - Address Prefix: 10.0.1.0/24

4. **Worker Node Subnet**:
   - Purpose: A subnet within the VNet for the worker nodes of the AKS cluster.
   - Address Prefix: 10.0.2.0/24

5. **Network Security Group (NSG)**:
   - Purpose: To control inbound and outbound traffic to resources within the VNet.
   - Inbound Rules: Allow traffic to kube-apiserver (port 443) and inbound SSH traffic (port 22) from the specified public IP address.
   
### Input and Output Variables

Throughout the networking module, we utilize input and output variables to configure and communicate with the module.

**Input Variables**:

- `resource_group_name`: Represents the name of the Azure Resource Group where networking resources will be deployed.
- `location`: Specifies the Azure region where networking resources will be deployed.
- `vnet_address_space`: Specifies the address space for the Virtual Network (VNet).

**Output Variables**:

- `vnet_id`: Stores the ID of the created Virtual Network (VNet) for use in other modules.
- `control_plane_subnet_id`: Holds the ID of the control plane subnet within the VNet.
- `worker_node_subnet_id`: Stores the ID of the worker node subnet within the VNet.
- `networking_resource_group_name`: Provides the name of the Azure Resource Group for networking resources.
- `aks_nsg_id`: Stores the ID of the Network Security Group (NSG) for security rule enforcement.

By documenting these details and variables, we ensure that the networking module's configuration and purpose are well-understood, facilitating collaboration and maintenance as the project evolves.

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.
