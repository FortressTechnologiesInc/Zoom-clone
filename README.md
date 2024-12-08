# Zoom Clone (MERN)

A full-stack video conferencing application inspired by Zoom, built using the MERN stack (MongoDB, Express.js, React.js, Node.js). This project enables real-time communication through video, audio, and chat, providing a seamless virtual meeting experience.

## Live Demo

   https://zoom-clone-inky-rho.vercel.app/

# Usage

    User Registration and Login:
        Create an account and log in securely.
    Create or Join Meetings:
        Generate a meeting room ID to start a new session or join an existing one.
    Video and Audio:
        Communicate with participants in real time.
    Chat:
        Send text messages during meetings.
    Screen Sharing:
        Share your screen for presentations or demonstrations.

## Features

- **Video and Audio Conferencing**: Real-time communication between multiple participants.
- **Chat Functionality**: Send and receive messages during meetings.
- **User Authentication**: Secure login and registration using JWT and bcrypt.
- **Meeting Rooms**: Create or join virtual meeting rooms with unique IDs.
- **Screen Sharing**: Share your screen during a meeting for presentations.
- **Responsive Design**: Works seamlessly on both desktop and mobile devices.

## Technologies Used

### Frontend
- **React.js**: Building dynamic and interactive user interfaces.
- **React Router**: Client-side navigation for seamless user experience.
- **WebRTC**: Peer-to-peer video and audio communication.
- **Axios**: Handling API requests.
- **CSS/SCSS**: For modern and responsive design.

### Backend
- **Node.js**: Server-side JavaScript runtime.
- **Express.js**: Backend framework for handling API routes.
- **Socket.IO**: Real-time communication for video, audio, and chat.
- **JWT (JSON Web Tokens)**: Secure token-based authentication.
- **bcrypt**: Encrypting user passwords.

### Database
- **MongoDB**: NoSQL database for storing user and meeting data.
- **Mongoose**: MongoDB object data modeling (ODM).

## Installation

Follow these steps to set up the project locally.

### Prerequisites
- Install [Node.js](https://nodejs.org/)
- Install [MongoDB](https://www.mongodb.com/try/download/community) locally or use a MongoDB Atlas cluster.

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/mohan7401647399/Zoom-clone.git

2. Navigate to the project directory:
   ```bash
    cd Zoom-clone

3. Install dependencies:
   ```bash
    For the server:
        cd server
        npm install
    
    For the client:
        cd client
        npm install

4. Configure environment variables:
   ```bash
    Create a .env file in the server directory with the following:
        PORT=5000
        MONGO_URI=your_mongodb_connection_string
        JWT_SECRET=your_secret_key

6. Run the application:
   ```bash
    Start the backend:
       cd server
       npm run dev

    Start the frontend:
       cd client
       npm start

7. Open your browser and go to:
   ```bash
    [text](http://localhost:3000)
