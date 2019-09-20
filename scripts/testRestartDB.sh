#!/bin/bash
#Needs to be docker-compose up executed and running
echo 'Create new database' 
docker exec postgres-db bash -c "echo 'DROP DATABASE IF EXISTS should_remove;
CREATE DATABASE should_remove;
\\c should_remove;
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
\\c test;
DROP DATABASE should_remove;' > testRestartModel.sql"
docker exec postgres-db psql -U postgres -h 0.0.0.0 -f ./testRestartModel.sql 
echo 'Running database migrations'
docker exec nodeBack sequelize db:migrate --env=test
echo 'Running database seeders'
docker exec nodeBack sequelize db:seed:all --env=test
echo 'Database initialized'
