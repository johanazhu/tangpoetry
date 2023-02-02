DB_PASSWORD=123456
container_name=tangpoetry-prod-1

version=$(cat tangpoetry_deploy/version)

echo 'docker build ...'
docker build tangpoetry_deploy -t tangpoetry:$version
if [ "$(docker ps -aq -f name=^tangpoetry-prod-1$)" ]; then
  echo 'docker rm ...'
  docker rm -f $container_name
fi
echo 'docker run ...'
docker run -e DB_HOST=$DB_HOST -e RAILS_MASTER_KEY=$RAILS_MASTER_KEY -d -p 3000:3000 --network=network1 -e DB_PASSWORD=$DB_PASSWORD --name=$container_name mangosteen:$version
echo 'DONE!'