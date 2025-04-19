you can see the project overview (images and a recorded video) in ./overveiw folder but in case you want to run the project on your own system follow these steps:

## 1️⃣ run the databes
you can run the databse using docker  connecte to your own SQL Server manually by updating the `./backend/dbconfig.js` file.

  using docker and azure data studio:

    1. Follow this tutorial to install and run a SQL Server container:  
       https://www.youtube.com/watch?v=9c7Ti2OcLZg
    
    2. Run the following command to create and start the Docker container:
    
       ```bash
       docker run -e 'ACCEPT_EULA=1' -e 'MSSQL_SA_PASSWORD=YourPassword123!' -p 1433:1433 --name sql_edge -d    mcr.microsoft.com/azure-sql-edge
       ```
    
       Replace `YourPassword123!` with a strong password of your choice.
    
    3. Use Azure Data Studio to connect to the database.  
       Refer to the configuration in `./backend/dbconfig.js` for connection details.

## 2️⃣Run the Backend

  enter the following commands in your terminal/command prompt:
  
    cd backend
    npm start

## 3️⃣Run the Frontend

  enter the following commands in your terminal/command prompt:
  
    cd frontend
    npm run dev

    
all done!

note: make sure to download and install dependencies.

