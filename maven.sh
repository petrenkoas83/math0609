#!/usr/bin/bash
mvn deploy:deploy-file \
   -X \
   -DgroupId=CreditProc_DB.Distrib \
   -DartifactId=${artifactId} \
   -Dversion=${version} \
   -Dpackaging=zip \
   -Dfile=../build-${project}/target/${artifactId}.jar \
   -DpomFile=../build-${project}/target/pom.xml \
   -DrepositoryId=releases \
   -Durl=http://nexusurl:8081/nexus/content/repositories/CC_CD_KK_repo/ \
   -Drepo.user=${user} \
   -Drepo.pass=${pass}
