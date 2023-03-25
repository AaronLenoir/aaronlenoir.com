cd app
git pull
cd ..
sudo docker build -t kicker-stats .
cd ..
sudo docker-compose stop kicker-stats
sudo docker-compose up -d kicker-stats
cd kicker-stats
