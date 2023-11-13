# build latest typescript app
yarn run build

# build docker image
docker buildx build . --platform=linux/amd64 -t connorstevens/nssa-320-final-project:latest --push