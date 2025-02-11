# Stage 1: Build the server
FROM node:16 AS server-build

# Set the working directory for the server
WORKDIR /app/server

# Copy the server's package.json and package-lock.json
COPY server/package*.json ./

# Install server dependencies
RUN npm install

# Copy the server source code
COPY server/ .

# Stage 2: Build the client
FROM node:16 AS client-build

# Set the working directory for the client
WORKDIR /app/client

# Copy the client's package.json and package-lock.json
COPY client/package*.json ./

# Install client dependencies
RUN npm install

# Build the client for production (Optional, if you want to build a production-ready client)
RUN npm run build

# Stage 3: Combine server and client into a final image
FROM node:16

# Set the working directory for the server and client
WORKDIR /app

# Copy server build from the server-build stage
COPY --from=server-build /app/server /app/server

# Copy client build from the client-build stage
COPY --from=client-build /app/client /app/client

# Set environment variables (These could also be done via a .env file or Kubernetes secrets, depending on your setup)
ENV PORT=5000
ENV MONGO_URI=mongodb+srv://denifer:admin123@mongodb-demo.p1jch.mongodb.net/?retryWrites=true&w=majority&appName=mongodb-demo
ENV JWT_SECRET=

# Expose port for the server
EXPOSE 5000

# Run the server and client concurrently
CMD cd server && npm run dev & cd client && npm start
