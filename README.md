# MS SQL Server Container

This project uses Docker and Docker Compose to create a SQL Server container. The database is initialized using a script located at `./sql/init.db`. Configuration settings such as the SA password and acceptance of the EULA are set in an `.env` file.

## Prerequisites

- Docker and Docker Compose installed on your machine.
- An `.env` file with the following variables:
  - `SA_PASSWORD`: The password for the SA account.
  - `ACCEPT_EULA`: Set this to `Y` to accept the End User License Agreement.

## Getting Started

1. **Build the Docker image:**
   Run the following command in your terminal:

   ```
   docker build -t sql_server_image .
   ```

2. **Start the container using Docker Compose:**
   Run the following command in your terminal:

   ```
   docker-compose up -d
   ```

   This will start the SQL Server container with the database initialized as per the `./sql/init.db` script.

## Connecting to the Database

You can connect to the database using the hostname `127.0.0.1` and the port `1433`. Use the `SA` account to login with the password provided in the `.env` file.

## Stopping the Container

To stop the SQL Server container, run the following command in your terminal:

```
docker-compose down
```

## Removing the Container

To remove the SQL Server container, run the following command in your terminal:

```
docker rm sql_server_container
```

```

Replace `sql_server_image` and `sql_server_container` with your preferred Docker image and container names respectively. Also, ensure that the `.env` file is correctly set up with your `SA_PASSWORD` and `ACCEPT_EULA=Y`.
