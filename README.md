# Smart Ticketing System

The Smart Ticketing System is a support ticket management application that automatically assigns tickets to agents based on their availability, shift schedules, and existing workloads. It helps automate the ticket assignment process, ensuring efficient and timely support operations.

## UI Interaction Guide

For a step-by-step guide on how to interact with the UI, refer to the Canva document:

📘 [UI Interaction Guide](https://drive.google.com/file/d/18W0uU9yBF4cY9o2_lmSobXdAvdPg_EMY/view?usp=sharing)

## REST API Documentation

The backend REST API enables seamless ticket and agent management.

### Base URL:
🔗 [Ticket API](https://ticket-api-1hh0.onrender.com/)

### Endpoints:

| HTTP Method | Route                   | Description                                                        |
|-------------|-------------------------|--------------------------------------------------------------------|
| GET         | `/tickets`               | Retrieve all tickets                                              |
| GET         | `/tickets/agents`        | Get ticket count per assigned agent                               |
| GET         | `/agents`                | Retrieve all agent details                                        |
| POST        | `/tickets/auto-assign`   | Auto-assign tickets based on agent availability and workload      |


For API testing, you can use Postman or any HTTP client.
## Live Web Application & Testing Credentials

The Smart Ticketing System is available online for testing:
🔗 [Live Web App](https://smart-ticketing-system-dihet0.flutterflow.app/)

### Testing Credentials

#### Support/Admin Login:
- Email: `admin@inet.com`
- Password: `inetadmin`

#### Agent Login:
create an account and login

Use these credentials to log in and explore the system.

---

## Mobile Application (APK) Download

The Smart Ticketing System mobile app is available for Android testing:

📥 [Download APK](https://drive.google.com/drive/folders/18dN-LMZRUXR0IjyjKk3HCvE3MtwwAuM6?usp=sharing)

After downloading, install the APK on your Android device and log in using the credentials above.




## Technologies Used

- Frontend: Flutter (Dart)
- Backend: Node.js (Actionherojs)
- Database: MongoDB (NoSQL)
- Languages:
  - Dart (98.6%)
  - JavaScript (0.4%)
  - HTML (0.4%)
  - Ruby (0.3%)
  - Swift (0.3%)
  - Kotlin (0.0%)

## Folder Structure
smart_ticketing_system/ │ ├── android/ # Android build files ├── assets/ # Application assets (images, etc.) ├── firebase/ # Firebase configuration ├── ios/ # iOS build files ├── lib/ # Flutter app code (main logic) ├── test/ # Unit and widget tests ├── web/ # Web build files ├── .gitignore # Git ignore settings ├── analysis_options.yaml # Dart analysis options ├── pubspec.yaml # Flutter dependencies └── README.md # Project README


## Database Schema

The system uses a NoSQL database (Firebase) for flexible data management.

1. User
   - `email`: User's email address
   - `role`: User's role (e.g., Agent, Admin)
   - `uid`: User's unique ID
   - `photo_url`: URL to user's photo

2. TicketData
   - `title`: Title of the ticket
   - `assigned_agent`: The agent assigned to the ticket
   - `status`: Status of the ticket (e.g., Pending, In Progress, Completed)
   - `description`: Description of the issue
   - `due_date`: Due date for ticket completion
   - `estimated_time`: Estimated time to resolve the ticket

3. AgentData
   - `status`: Current status of the agent (Online/Offline)
   - `name`: Agent's name
   - `current_ticket_load`: Number of tickets currently assigned to the agent
   - `start_shift`: Agent's shift start time
   - `shift_end`: Agent's shift end time

4. AutoAssignedTickets
   - `assigned_agent`: Agent assigned to the ticket
   - `assigned_at`: Time the ticket was assigned
   - `due_date`: Due date for ticket completion
   - `status`: Current status of the assigned ticket
   - `title`: Title of the ticket
   - `IsDone`: Status to check if the task is completed

## Features

- Ticket Creation: Users can create support tickets with details such as title, description, due date, and estimated work hours.
- Automatic Ticket Assignment: Tickets are automatically assigned to online agents who are not currently overloaded, considering their shift schedules.
- Agent Availability and Shift Management: The system tracks the online status, current ticket load, and shift schedules of agents to assign tickets appropriately.
- Manual Ticket Assignment by Support: Support team members can manually assign tickets from the queue to agents based on their workload and expertise.
- Reassigning Tickets: Tickets from the queue are automatically reassigned to agents as they become available.

## API Documentation

The API endpoints are developed to manage tickets and agents efficiently. 

Ticket API Route Table:

| HTTP Method | Route                   | Description                                                        |
|-------------|-------------------------|--------------------------------------------------------------------|
| GET         | /tickets                | Returns all ticket details                                          |
| GET         | /tickets/agents         | Aggregates ticket count by assigned agent                           |
| GET         | /agents                 | Returns all agent details                                           |
| POST        | /tickets/auto-assign    | Auto-assigns tickets to available agents based on shift and queue  |

API Base URL: [Ticket API](https://ticket-api-1hh0.onrender.com/)

## Installation Instructions

### Prerequisites

- Flutter: To build and run the Flutter frontend.
- Node.js: To set up the backend server.
- MongoDB: For managing and storing data.
  
### Steps to Run the Application

1. Clone the repository:


2. Setup Frontend (Flutter):
- Install dependencies:
  ```
  flutter pub get
  ```
- Run the app:
  ```
  flutter run
  ```

3. Setup Backend (Node.js):
- Install Node.js dependencies:
  ```
  npm install
  ```
- Start the server:
  ```
  npm start
  ```

4. Connect to MongoDB: Ensure MongoDB is running locally or on a cloud instance, and update connection details in the backend configuration.

### Running Tests

- For unit and widget tests in Flutter, run:


- For backend API tests, you can use Postman or any HTTP client to test API endpoints.

## Contributing

We welcome contributions to improve the Smart Ticketing System. To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.




