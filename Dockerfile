FROM jenkins/jenkins:latest

# Desabilitar el "Setup Wizard"
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Configuración de Jenkins. Luego se copia
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

# Instalar plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
#WARN: install-plugins.sh has been removed, please switch to jenkins-plugin-cli 
#https://github.com/jenkinsci/docker/blob/master/README.md#usage-1
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

# Copia la configuración de Jenkins
COPY casc.yaml /var/jenkins_home/casc.yaml

