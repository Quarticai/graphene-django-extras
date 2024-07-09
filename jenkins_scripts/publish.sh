#!/usr/bin/env sh

echo $NODE_NAME
echo $PIPELINE_NODE
echo $NODE_LABELS
echo $RESERVE
echo $PWD
set -ex
echo "$BRANCH_NAME"

pip install -U pip==$PIP_VERSION
pip install uv==$UV_VERSION

uv pip install -r requirements.txt --system -f https://download.pytorch.org/whl/torch_stable.html
