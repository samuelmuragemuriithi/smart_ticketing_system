# Smart Ticketing System

The Smart Ticketing System is a support ticket management application that automatically assigns tickets to agents based on their availability, shift schedules, and existing workloads. It helps automate the ticket assignment process, ensuring efficient and timely support operations.

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

The system uses a NoSQL database (MongoDB) for flexible data management.

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
- Manual Ticket Claiming: Agents can manually claim tickets from the queue based on their availability.
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




