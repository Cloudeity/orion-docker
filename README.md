# orion-docker
Eclipse Orion in Docker

Run with:
```
docker run -d --name orion -v $(pwd):/opt/orion.client/modules/orionode/.workspace -p 8081:8081 cloudeity/orion
```
or within Cloudeity:
```
docker run -d --name orion -v /home/ec2-user/workspace:/opt/orion.client/modules/orionode/.workspace -v /home/ec2-user/.orion:/root/.orion --net secure cloudeity/orion
```

then open https://orion-8081.<your_project_hostname>.cloudeity.net/
