# build latest typescript app
yarn run build

# build docker image
docker buildx build . -t web-app