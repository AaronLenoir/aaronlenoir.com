#!/bin/sh
echo "Updating custom casper theme ..."
git -C blog/data/ghost/themes/casper-custom pull
echo "Running the containers (detached) ..."
sudo docker-compose --env-file ./config/.env.prod up -d
