---
title: 'docker usage'
date: '2014-08-29'
description:
tags: [docker, linux]
categories: [Programming]
---

## docker usage
[docker try](https://www.docker.com/tryit)
### 1. search for images

```
docker images
```

### 2. downloading container images

```
docker pull <username>/<repository>.
docker pull learn/tutorial
```

### 3. running cmd
The command docker run takes a minimum of two arguments: 
> * 1) an image name, and 
> * 2) the command you want to execute within that image.

```
docker run -t -i -p 3000 ubuntu /bin/bash
docker run learn/tutorial echo "hello world"
```

### 4. install things

```
docker run learn/tutorial apt-get install -y ping
```
p.s. Don't forget to use -y for noninteractive mode installation.
### 5. save changes to images
1) list the ID of the container you created by installing ping

```
docker ps -l
```

2)save the changes

```
docker commit 698 learn/ping
```

### 6. run the images to test the function

```
docker run learn/ping ping google.com
```

### 7. check the container

1) see a list of all running containers, 

```
docker ps
```

2) see useful information about this container

```
docker inspect <ID>
```

### 8. push image to the Docker Hub Registry and share

```
docker push learn/ping
```