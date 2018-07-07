# docker run --rm -ti gelog/plink --file /usr/local/plink/test
# docker run --rm -ti plink:0.0.1 bash
export VERSION=$(cat VERSION)

IMAGE=$1
NAME=$2

IMAGE='plink'
NAME='plink-container'

CMD="docker run \
    --rm \
    --name $NAME \
    -ti $IMAGE:$VERSION\
    bash
"

echo "CMD: [$CMD]" >&2
ret= eval $CMD
exit $ret
