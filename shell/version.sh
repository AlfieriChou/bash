VERSION=`cat ../demo/package.json | jq .version | sed 's/\"//g'`
NAME=`cat ../demo/package.json | jq .name | sed 's/\"//g'`

echo ${VERSION}
echo ${NAME}
