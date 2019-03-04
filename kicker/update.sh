cd app
git pull
cd ..
sudo docker build -t kicker .
cd ..
sudo docker-compose stop kicker
sudo docker-compose up -d kicker
cd kicker
