FROM    debian:sid-slim
LABEL   maintainer "Saurabh Rohankar"
RUN	apt-get update && apt-get install -y 
RUN     apt-get install curl -y 
RUN     apt-get update && apt-get install -y gnupg2 sudo
RUN     curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | apt-key add -  
RUN     echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list.d/spotify.list
RUN     sudo apt-get update && sudo apt-get install spotify-client -y
ENTRYPOINT	[ "spotify" ]
