on=1.2.5
artifact="Math"
repoId=mfr
groupId=org.myorg
REPO_URL=http://localhost:8081/nexus
file=Math.jar
user=admin
pass=admin123/sssbin/bash
jar cvf Math.jar ../math0609/Math.class

version=1.2.5
artifact="Math"
repoId=mfr
groupId=org.myorg
REPO_URL=http://localhost:8081/nexus
file=Math.jar
user=admin
pass=admin123

# it works
#curl -u $user:$pass --upload-file $file $REPO_URL/content/repositories/$repoId/$groupId/$artifact/$version/$artifact-$version.tgz
echo $REPO_URL/content/repositories/$repoId/$groupId/$artifact/$version/$artifact-$version.tgz

# It works too 
curl -v \
     -F r=$repoId \
     -F hasPom=false \
     -F e=jar \
     -F g=$groupId \
     -F a=$artifact \
     -F v=$version \
     -F p=jar \
     -F file=@$file \
     -u $user:$pass \
     http://localhost:8081/nexus/service/local/artifact/maven/content
