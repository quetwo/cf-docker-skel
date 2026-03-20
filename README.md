# CF Docker Project Skeleton
-----------
### Basics on how to use this skel for your own projects
1. Clone the Repository.
2. Create the DB Secrets file.  This file must be named `db/secrets.txt`.  A sample file is included to show what this 
would look like.
3. Create the shared DB Secrets file.  This file must be named `db/secrets_shared.txt`.  A sample file is included to show what this
   would look like.  This file is exposed to the frontend and can be used to auto-config DB connections.
4. Create the Front-End Secrets file.  This file must be named `frontend/secrets.txt`.  A sample file is included 
to show what this would look like.  You can enable and disable the lucee admin and set the admin password here.
5. Place your CF code in the `frontend/webroot/` folder.  This will be the root of your website.
6. All references to the database in your code will be on the hostname `db` instead of `localhost`.  
7. Place any SQL statements you want run on the first startup of your SQL database in `db/dumps/`.  This would typically
be an export or backup of an existing database.  These SQL statements are ONLY run on the initial start.
8. Modify the `docker-compose.yml` file to change the `- "traefik.http.routers.frontends.tls.domains[0].main=dev.host.com"`
   on line 24 to march your domain name.  This is used to generate a certificate with that hostname.
9. Update the `proxy/config.toml` to include your email address near the end of the file. 
10. Modify the `docker-compose.yml` file to change the `quetwo/cf-docker-skel` to match your DockerHub username and 
project name.  
11. Launch the Docker image.  `docker-compose up`
12. To shut down the server, press [CTL][C].   To re-run, enter the `docker-compose up` command.

### Deploying to production
1. Get a DockerHub repository setup as a place to stage your images.
2. Verify settings in `docker-compose.yml` are correct.  You will want to make sure the image matches your DockerHub
account and repository.  Pay attention to line 10, in particular.
3. Modify the `proxy/config.toml` to remove the line `caServer = "https://acme-staging-v02.api.letsencrypt.org/directory"`
   on line 147.  This will generate real TLS certs (watch the logs to make sure it is successful).
4. Push the docker image to a docker repository of some kind, then deploy.  Use the instructions from the repository of
   your choosing.

