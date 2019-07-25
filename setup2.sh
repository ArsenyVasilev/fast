curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && yes | sudo apt-get install docker-ce && sudo systemctl start docker && sudo docker pull viacode/itsm-z:latest && mkdir zammad && mkdir zammad/mysqlbackup && mkdir zammad/mysql && docker run -it --name zammad -d viacode/itsm-z -p 8081:80/tcp -v /zammad/mysqlbackup:/var/lib/mysqlbackup -v /zammad/mysql:/var/lib/mysql && docker update --restart=always zammad