# [jenkins-aws] docker with AWS plugins
# [docker-jenkins](https://github.com/nvucinic/jenkins-aws#Docker)

### Docker
Jenkins-AWS is easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the Dockerfile if necessary.

When ready, simply use the Dockerfile to build the image:

```sh
git clone git@github.com:nvucinic/jenkins-aws.git
cd jenkins-aws
docker build -t nvucinic/jenkins-aws .
```
This will create the jenkins-aws image and install all the necessary plugins.

Once done, run the Docker image and map the port to whatever you wish on your host. 

In this example, we simply map port 8000 of the host to port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```sh
docker run -d -p 8000:8080 --restart="always" nvucinic/jenkins-aws
```

Verify the deployment by navigating to your server address in your preferred browser - http://localhost:8080
