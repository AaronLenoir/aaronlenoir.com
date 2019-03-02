sudo docker-compose pull
cd kicker/app
git pull
cd ..
sudo docker build -t kicker .
sudo docker-compose restart
