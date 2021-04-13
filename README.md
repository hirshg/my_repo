# My NGINX application

### Intro
Simple application, based on NGINX, which serves a web page that returns current date and time

### Build
* To build the image from the Dockerfile, run the following command:\
  ```docker build -t [image_name] .```

### Push 
* To push the built image to Docker Hub repo (my repo in this example), run the following commands (after successfully login to the docker repo):\
  ```docker tag [orig_image_name]:[orig_tag] s7672190/repo1:[tag_id]```\
  ```docker push s7672190/repo1:[tag_id]```

### Deploy 
* To deploy the application from the given helm chart, run the following command:\
  ```helm install [helm_chart_name] ./my_chart/ -n [namespace_name]```
* You can also deploy the application, by running the following commands, without using helm:\
  ```kubectl create deployment [deployment_name] --image=s7672190/repo1:[tag_id] -n [namespace_name]```\
  ```kubectl create service nodeport [service_name] --tcp=8080:8080 -n [namespace_name]```

### Test
* To test the application, run the following command:\
  ```./my_test.sh [node_ip] [service_external_port]```
