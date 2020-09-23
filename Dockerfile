FROM java:8

COPY src /home/root/latihan/javahelloworld/src

WORKDIR /home/root/latihan/javahelloworld

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
