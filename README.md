# CF Docker Project Skeleton
-----------
### Basics on how to use this skel for your own projects
1.  Clone the Repository.
2.  Create the DB Secrets file.  This file must be named `db/secrets.txt`.  A sample file is included to show what this 
would look like.
3.  Create the Front-End Secrets file.  This file must be named `frontend/admin-password.txt`.  A sample file is included 
to show what this would look like.  This is simply the "CFIDE" administrator panel password.
4.  Place your CF code in the `frontend/webroot/` folder.  This will be the root of your website.
5.  All references to the database in your code will be on the hostname `db` instead of `localhost`.  
5.  Place any SQL statements you want run on the first startup of your SQL database in `db/dumps/`.  This would typically
be an export or backup of an existing database.  These SQL statements are ONLY run on the initial start.
6.  Modify the `docker-compose.yml` file to change the `quetwo/cf-docker-skel` to match your DockerHub username and 
project name.  
7.  Launch the Docker image.  `docker-compose up`
8.  To shut down the server, press [CTL][C].   To re-run, enter the `docker-compose up` command.

### Deploying to production
1.  Get a DockerHub repository setup as a place to stage your images.
2.  Verify settings in `docker-compose.prod.yml` are correct.  You will want to make sure the image matches your DockerHub
account and repository.
3.  Edit the `push_production.bat` file to match the settings for your final destination.  In particular lines 18-22.
4.  Run the `push_production.bat` file.  It should take a few minutes to push to DockerHub, then for your sevrer to pull
the image and deploy.   

