#!/bin/sh

apk update
apk add nodejs curl bash gnupg

touch $HOME/.profile && echo 'export PATH="$HOME/.yarn/bin:$PATH"' > $HOME/.profile

curl -o- -L https://yarnpkg.com/install.sh | bash

mkdir -p /app
