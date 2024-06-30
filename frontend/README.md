# running databes
run docker container:
  https://www.youtube.com/watch?v=9c7Ti2OcLZg
   docker run -e 'ACCEPT_EULA=1' -e 'MSSQL_SA_PASSWORD=Mahya09354600908' -p 1433:1433 --name sql_edge -    d mcr.microsoft.com/azure-sql-edge
   
make connection using azure data studio(more information in backend/dbconfig.js)

# running backend
cd backend

npm start

# running frontend
cd frontend

npm run dev
