# Java 8 environment with JavaFX
FROM dgricci/java:1.0.0
MAINTAINER Didier Richard <didier.richard@ign.fr>
LABEL       version="1.0.0" \
            javafx="v8u141" \
            os="Debian Stretch" \
            description="Java 8 - Rich client application platform"

COPY build.sh /tmp/build.sh

RUN /tmp/build.sh && rm -f /tmp/build.sh

# print javapackager version
CMD ["javapackager", "-version"]

