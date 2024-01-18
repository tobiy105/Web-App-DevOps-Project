# Web-App-DevOps-Project

Welcome to the Web App DevOps Project repo! This application allows you to efficiently manage and track orders for a potential business. It provides an intuitive user interface for viewing existing orders and adding new ones.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Technology Stack](#technology-stack)
- [Contributors](#contributors)
- [Feature Reversion](#feature-reversion)
- [License](#license)

## Features

- **Order List:** View a comprehensive list of orders including details like date UUID, user ID, card number, store code, product code, product quantity, order date, and shipping date.
  
![Screenshot 2023-08-31 at 15 48 48](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/3a3bae88-9224-4755-bf62-567beb7bf692)

- **Pagination:** Easily navigate through multiple pages of orders using the built-in pagination feature.
  
![Screenshot 2023-08-31 at 15 49 08](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/d92a045d-b568-4695-b2b9-986874b4ed5a)

- **Add New Order:** Fill out a user-friendly form to add new orders to the system with necessary information.
  
![Screenshot 2023-08-31 at 15 49 26](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/83236d79-6212-4fc3-afa3-3cee88354b1a)

- **Data Validation:** Ensure data accuracy and completeness with required fields, date restrictions, and card number validation.

## Getting Started

### Prerequisites

For the application to succesfully run, you need to install the following packages:

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

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.
