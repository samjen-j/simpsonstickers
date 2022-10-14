#!/bin/bash
sudo chmod -R 777 /home/ec2-user/simpsons-app
sudo chown -R ec2-user:ec2-user /home/ec2-user/simpsons-app/

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

npm install

node index.js > app.out.log 2> app.err.log < /dev/null &

