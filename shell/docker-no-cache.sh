if [ ! -f ../demo/.dockerignore ]; then
  echo "Warning, .dockerignore file is missing."
  read -p "Proceed anyway?"
fi

if [ ! -f ../demo/package.json ]; then
  echo "Warning, package.json file is missing."
  read -p "Are you in the right directory?"
fi

VERSION=`cat ../demo/package.json | jq .version | sed 's/\"//g'`
NAME=`cat ../demo/package.json | jq .name | sed 's/\"//g'`
LABEL="alfierichou/$NAME:$VERSION"

docker build -f ../demo/Dockerfile --no-cache=true -t $LABEL .
read -p "Press enter to publish"
docker push $LABEL
