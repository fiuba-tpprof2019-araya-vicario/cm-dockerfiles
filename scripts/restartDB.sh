#!/bin/bash
#Needs to be docker-compose up executed and running
echo 'Create new database' 
docker exec postgres-db bash -c "echo 'DROP DATABASE IF EXISTS should_remove;
CREATE DATABASE should_remove;
\\c should_remove;
DROP DATABASE IF EXISTS postgres;
CREATE DATABASE postgres;
\\c postgres;
DROP DATABASE should_remove;' > restartModel.sql"
docker exec postgres-db psql -U postgres -h 0.0.0.0 -f ./restartModel.sql 
echo 'Running database migrations'
docker exec nodeBack sequelize db:migrate 
echo 'Running database seeders'
docker exec nodeBack sequelize db:seed:all
echo 'Database initialized'

