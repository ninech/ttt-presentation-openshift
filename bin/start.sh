#!/bin/bash

echo "---> Installing nodejs dependencies"
if npm ls &>/dev/null;
then
  echo "All NodeJS dependencies are installed."
else
  npm install
fi

echo "---> Starting the server"
exec npm start
