#!/bin/bash
#Needs to be docker-compose up executed and running
echo 'Running database migrations'
docker exec nodeBack sequelize db:migrate 
echo 'Running database seeders'
docker exec nodeBack sequelize db:seed:all
echo 'Database migrated'

