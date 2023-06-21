FROM maven AS build
COPY ./src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean install

FROM tomcat
RUN rm -fr /usr/local/tomcat/webapps/ROOT
COPY --from=build /usr/src/app/target/japp1.war /usr/local/tomcat/webapps/ROOT.war
