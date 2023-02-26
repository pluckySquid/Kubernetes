FROM ubuntu:22.04
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y python3 \
  && rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash apprunner


# Install OpenJDK-17
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y ant && \
    apt-get clean;
    
# Fix certificate issues
RUN apt-get update && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;


    
# install nano, wget
RUN apt-get update && \
    apt-get install -y nano && \
    apt-get install -y wget && \
    apt-get install xz-utils && \ 
    apt-get install -y openssh-client && \ 
    apt-get install -y git;
    
#mkdir folder
Run mkdir ~/nextflow && \
    mkdir ~/QCXMS
   

# install nextflow
Run cd ~/nextflow && \
    wget -qO- https://get.nextflow.io | bash && \
    chmod +x nextflow;

# install qcxms
Run cd ~/QCXMS && \
    wget http://github.com/qcxms/QCxMS/releases/download/v.5.2.1/QCxMS.v.5.2.1.tar.xz && \
    tar -xvf QCxMS.v.5.2.1.tar.xz && \
    mkdir $HOME/bin && \
    scp qcxms $HOME/bin/ && \
    scp pqcxms $HOME/bin/ && \
    scp q-batch $HOME/bin/ && \
    scp getres $HOME/bin/ && \
    scp -r .XTBPARAM $HOME/;

USER apprunner
