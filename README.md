# [Jenkins-aws](https://github.com/nvucinic/jenkins-aws#Docker) - Jenkins with AWS plugins
This project aims to build a pre-configured Docker image for Jenkins with AWS plugins.

![Jenkins+AWS Logo](https://raw.githubusercontent.com/nvucinic/jenkins-aws/master/logo/logo.png)


### Docker images

Jenkins-AWS is easy to install and deploy Jenkins with preconfigured AWS plugins.
Jenkins-AWS provides all required plugins to run AWS powered Jenkins pipeline. 

When ready, simply use the Dockerfile to build the image:

```bash
git clone git@github.com:nvucinic/jenkins-aws.git
cd jenkins-aws
docker build -t nvucinic/jenkins-aws .
```
This will create the jenkins-aws image and install all the necessary plugins.

Once done, run the Docker image and map the port to whatever you wish on your host. 

```bash
docker run -d -p 8000:8080 -v /var/lib/jenkins:/var/jenkins_home --restart="always" nvucinic/jenkins-aws
```

 This will start a new Jenkins master
- It will listen on Port 8080 for any HTTP requests
- Authentication is only possible using credentials (default: admin/admin)
- Changing  password is only possible by using the `JENKINS_PASS` environment variable
- All configuration will be saved into `/var/lib/jenkins`

Removing the `-v` will prevent the Docker container from writing anything to
the host file system but may result in data loss when the container is removed.

Verify the deployment by navigating to your server address in your preferred browser - http://localhost:8080

## Read More

There are some useful links to get started using Jenkins pipelines in combination
with AWS.

- [Jenkins-on-aws](https://docs.aws.amazon.com/aws-technical-content/latest/jenkins-on-aws/containerized-deployment.html)
- [40 Jenkins Features & Plugins You Wished You had Known](https://www.youtube.com/watch?v=3dYM0XUrXHc)
