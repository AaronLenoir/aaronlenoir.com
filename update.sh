sudo docker-compose pull --ignore-pull-failures
cd kicker/app
git pull
cd ..
sudo docker build -t kicker .
sudo docker-compose restart
