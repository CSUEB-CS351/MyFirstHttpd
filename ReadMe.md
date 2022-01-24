## Docker with a httpd server running 

We'll use this repository to get familiar with Docker, Linux and get a peek at Apache.  We'll go over all this together in class but for your notes and so you can run it again outside of class. Here are the steps to get set up. 

To get started:
   1. Make sure Docker is up and running on your computer and you have Git installed. 
   2. Create a folder/directory on your computer where you'd like to keep store the files.
   3. Open a Terminal on the Mac or linux. On Windows open a PowerShell.
   4. Navigate to the new directory you just created.
      - For example `cd Documents/CS351/work/` but to the path you created.
   5. Clone the repository to your computer:
      - `git clone https://github.com/CSUEB-CS351/MyFirstHttpd`
      - This will create a new MyFirstHttpd directory on your computer with the repository files in it. 
   6. Navigate to the new MyFirstHttpd directory. 
      - `cd MyFirstHttpd`
   7. Build the Docker Image:
      - `docker-compose build`
   8. Start up the Docker Image on your computer
      - `docker-compose up`
   9. Open a browser and to the the URL `http://localhost:8080/`
      - You should see a page with the text `Hello, World!`
      - If you'd like you can edit the `.\public-html\index.html` to change the page. 
   10. To open a bash terminal open up an additional Terminal/PowerShell, navigate the the MyFirstHttpd directory and enter the following
       - `docker exec -it myfirsthttpd_web_1 bash`
       - You now see a new command line prompt like `root@3c86404d83eb:/home/student#` 
       - You are now running a Bash terminal in the Docker Image running on your computer.  You can now play with all the Linux commands we will be going over today in a safe environment.  If you destroy anything in here you can just remove the docker images and start over. 
   11. To exit the bash shell type `exit` into the bash shell
   12. To stop the Docker Image from running enter the following command on in the MyFirstHttpd folder:
       - `docker-compose down`
   13. To start it up again simply navigate back to the MyFirstHttpd directory and enter 'docker-compose up'