# go-rest-websockets

## 🐳 Running the PostgreSQL database with Docker

To start the PostgreSQL database container, follow these steps:

1. Navigate to the `database/` directory:

   ```bash
   cd database/
   ```

2. Build the Docker image:

   ```bash
   docker build . -t go-rest-websockets-db
   ```

3. Run the container and expose the port:

   ```bash
   docker run -p 54321:5432 go-rest-websockets-db
   ```

   📌 This maps the container's default PostgreSQL port (5432) to your local machine on port 54321.
