#!/bin/bash



while [ true  ]
do
	echo "what is your os? (press 1 for Mac, 2 for Windows, 3 for Linux)"
	read osname
	if [ "$osname" == "1" ]; then
		echo mac
		
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor
export PATH="/usr/local/bin:$PATH"
#brew install node
cd protoType
npm install
brew install wireshark
nohup node index.js &
echo " please navigate to localhost:3000 to view the app"


		break
	elif [ "$osname" == "2" ]; then
	        echo windows
		break
	elif [ "$osname" == "3" ]; then
		echo linux
		break
	else
		echo please make a valid selection
	fi
done



