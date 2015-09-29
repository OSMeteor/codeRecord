 docker run -i -t -p 80:80 -p 22:22  ubuntu   /bin/bash 
 
docker run --name gitlab -d \
    --link gitlab-postgresql:postgresql --link gitlab-redis:redisio \
    --publish 10022:22 --publish 10080:80 \
    --env 'GITLAB_PORT=10080' --env 'GITLAB_SSH_PORT=10022' \
    --env 'GITLAB_SECRETS_DB_KEY_BASE=long-and-random-alpha-numeric-string' \
    --volume /srv/docker/gitlab/gitlab:/home/git/data \
    sameersbn/gitlab:8.0.2
    
docker run --name dockerUbuntu14.4.3 -d  --publish 10022:22 --publish 10080:80  --volume /srv/docker/gitlab/gitlab:/home/git/data ubuntu
     
 sudo docker attach evil_carson
