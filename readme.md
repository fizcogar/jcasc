Jenkins configuration As Code (JASC)

1 - Instalar Docker en Ubuntu:
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04

2 - Jenkins Configuration as Code:
https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-setup-with-docker-and-jenkins-configuration-as-code?utm_source=pocket_mylist

docker build -t jenkins:jcasc .
docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password jenkins:jcasc

3 - Jenkins-as-Code: Creating Jenkins jobs with text, not clicks
https://marcesher.com/2016/06/08/jenkins-as-code-creating-jenkins-jobs-with-text-not-clicks/?utm_source=pocket_mylist



