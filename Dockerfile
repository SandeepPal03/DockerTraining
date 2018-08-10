FROM java:8
COPY src /home/root/DockerTraining/src
WORKDIR /home/root/DockerTraining
RUN mkdir bin
RUN javac -d bin src/helloworld.java
ENTRYPOINT ["java","-cp","bin","helloworld"]
