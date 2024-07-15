# Apache Webserver Containerization Project
 
This project demonstrates how to containerize an Apache web server using **Docker**, upload the image to **Docker Hub**, and allow others to pull and run it.

# Steps
1. Prepare html file and Dockerfile down for use.

2. Lunch EC2 with access to session manager
[![Running EC2](./images/ec2.png)]

3. Install Docker
[![docker](./images/docker.png)]

4. Create html and Dockerfile 

5. Build Docker Image, run and test it locally (Containerize it in other word)
[![image](./images/image.png)]

[![container](./images/container.png)]

6. Browser page displaying my containerized app
[![web page](./images/web.png)]

7. Tag and push image to **DockerHub**
[![push](./images/push.png)]

[![Hub](./images/hub.png)]

8. Pull and run a image
[![Hub](./images/pull.png)]

[![Hub](./images/pull2.png)]

# **Summary**
Containerization is the process of packaging an application and its dependencies into a single portable unit called a container. Using Docker, this involves writing a Dockerfile, building an image, and running that image as a container.

In this project, the Apache web server was containerized using the official httpd base image and a custom index.html file. The image was built, tested by running locally on port 80, and pushed to Docker Hub for others to pull and use.

This process ensures the web application runs consistently across any environment and demonstrates the core concept of Docker containerization build once, run anywhere.