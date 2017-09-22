# subversion

Subversion repo with http access - http://docker:8980/repos

Apache htpasswd needs to go in home directory
/mnt/subversion is the subversion volume

    docker run \
       -d \
       --restart=unless-stopped \
       --name svn \
       -p 8980:80 \
       -v ${PWD}/home:/root \
       -v /mnt/subversion:/mnt/subversion \
       martinjohn/subversion
