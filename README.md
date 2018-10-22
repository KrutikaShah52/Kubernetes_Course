Kubernetes Course Content:
Helm folder content are stored in KrutikaShah52/Helm_repo_Jenkins repository.
1. install docker on admin server
    - sudo yum install docker
    - sudo scp -i learning-kubernetes.pem Steps\ Create\ Cluster ec2-user@54.159.7.25:/home/ec2-user/. (scp command)
2. pod.yaml:

  apiVersion: v1
  kind: Pod
  metadata:
    name: helloworld-node
    labels:
      app: hellonode
  spec:
    containers:
    - name: nodejs_docker_example
      image: krutika1052/nodejs_docker_example
      ports:
      - name: nodejs-port
        containerPort: 3000

3. kubectl create pod -f pod.yaml
4. change the port locally: 
      kubectl port-forward podname(helloworld-node) 8081:3000 (change to : actual port)

5. debug problems: 
    kubectl attach podname -i 
    kubectl exec -it podname -- bash
    kubectl logs podname  

6. service.yaml:

  apiVersion: v1
  kind: Service 
  metadata: 
    name: helloworld-service
  spec: 
    ports: 
      - port: 80 
        targetPort: nodejs-port
        protocol: TCL
      selector:
        app: hellonode 
      type: LoadBalancer
  kubectl get service
  kubectl describe service servicename

7. Go to EC2 instances and Load Balancer at notations.
   Copy the DNS name and paste it on crome new tab. It shows you hello-world on page.

8. Replication controller is shows pods number 
   If you set the replica as 3 then you get the 3 pods running on the kube cluster
   This is done if your app is stateless:
      Scale replicas as: kubectl scale --replicas=4 -f replica.yaml
                          kubectl get rc (you have 4 number of replicas)
                          kubectl scale --replicas=1 rc/nameofreplicas
                          kubectl get pods (you get only one pod is running)

9. Deployment:
apiVersion: apps/v1beta2
kind: Deployment
metadata:
  name: hellonode-deployments
  labels: 
    app: hellonode
spec:
  replicas: 3
  selector:
    matchLabels:
      app: hellonode
  template:
    metadata:
      labels:
        app: hellonode
    spec:
      containers:
      - name: hellonode
        image: krutika1052/heelo_node
        ports:
        - name: nodejs-port
          containerPort: 3000
10. kubectl create -f hellonode-deployment.yaml
    kubectl get pods, rs, deployments
    kubectl rollout status deployment/hellonode-deployment
    kubectl set images deployment/nameofdeployment container_name=myimage:latest
    kubectl rollout status deployment/nameofdeployment
    kubectl rollout history deployment/hellonode-deployment 
      - This is done when you have create your deployment with --record
        kubectl create -f deployment/name.yaml --record 
    kubectl rollout undo deployment/nameofdeployment
    kubectl rollout status deployment/hellonode-deployment

11. Create a service using .yaml file

12. Labels and nodeSelector

13. Debug like: 
    - Kubectl get pods
      status pending and AVAILABLE: 0
      kubectl describe pod and nameoneofthepod
        - it gives problem at last line, fail to fit in any node etc..,
    
14. Heath Checks:
    - vim hellonode-heathcheck.yaml
      kubectl create -f hellonode-heathcheck.yaml
        livenessProbe:
            httpGet:
              path: /
              port: nodejs-port
            initialDelaySeconds: 15
            timeoutSeconds: 10
        add this code in deployment.yaml
      kubectl create -f hellonode-heathcheck.yaml
      kubectl get pods
      if not running mode thn describe and check warning 
      kubectl describe pods podnameofheathcheck
      kubectl get pods
      kubectl edit deployment/hellonode-healthcheck
        - Check livenessProbe details are available 

15. Pods state:
      - kubectl get pods
        kubectl get pods -n kube-system
        kubectl describe pods etcd-server-events-ip-172-31-77-130.ec2.internal -n kube-system
        kubectl get pods kube-apiserver-ip-172-31-77-130.ec2.internal -n kube-system -o yaml

16. Pods Lifecycle:
      - init container : Type          Status 
                        Initialized     False
                        Ready           False
                        PodScheduled    True
      - postStart
      - readinessProb
      - livenessProbe
      - preStop
      - kubectl get pods -w (working progress)

17. Secrets:
    - Provides a way in Kubernetes  to distribute credentials, keys, password or secret data to pods 
    create secrets: 
        echo -n "root" >./username.txt
        echo -n "pass" >./pass.txt
      - kubectl create secret generic nameofsecret --from-file=./username.txt --from-file=./pass.txt 
      - kubectl create secret generic ssl-certificate --from-file=ssh-privatekey=~/.ssh/id_rsa --ssl-cert-=ssl-cert=mysslcert.crt 
      - using yaml :
      secrets.yaml:
      apiVersion: v1
      kind: Secret 
      metadata:
        name:secret-data
      type: Opaque
      data:
        password: password in base64 command is: echo -n "root"| base64
        username: username in base64
    kubectl create -f secrets.yaml
    create secret using environment variables 
    alternatively provice a secrets in a file using volume tag in yaml file 

18. example of wordpress on kubernetes

19. web UI:
    Create dashboard:
      - kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
    Create user:
      - vim sample-user.yaml  
        kubectl create -f sample-user.yaml
    Get login token:
      - kubectl -n kube-system get secret | grep admin-user 
        kubectl -n kube-system describe secret admin-user-token-<id displayed by the previous command>    
        vim ~/.kube/config
        kubectl config view -->check password and server 
        click server link and add token from kubectl config view data 
        kubernetes dashboard started 

20. Autoscaling:
    - Use heapster --> the monitoring tool, to gather its metrics and make scaling decisions
    - make Autoscaling.yaml for Deployment, Service, HorizontalPodAutoscaler
    run image for increase load:
    - kubectl run -i --tty load-generator --image=busybox /bin/bash

21. NameSpace:
    - kubectl create namespace mynamespace 
      kubectl get namespace 
      kind: ResourceQuota
      - resource limit and object limit 
      kubectl get pods --namespace=mynamespace
      kubeclt get deploy --namespace=mynamespace
      kubeclt delete deploy nameofdeployment --namespace=mynamespace
      kubectl get quota --namespace=mynamespace
      kubectl describe quota nameofquota --namespace-mynamespace

22. User Management
    Adding User
    RBAC
    Demo of RBAC

23. High Availibility
    Demo to create cluster of high Availibility

24. TLS on ELB using annotations
    Demo: TLS on ELB

25. Helm:
    - install Helm:
        wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
        tar -xzvf helm-v2.9.1-linux-amd64.tar.gz
        sudo mv linux-amd64/helm /usr/local/bin/helm
    - initialize helm:
        kubectl create heml-rbac.yaml 
        helm init --service-account tiller
    - check where is install 
      kubectl get pods -n kube-system (-n for namespace)
      helm search redis

    - upgrade image in helm install: helm upgrade --set image.tag=v2 release-name .
    - deploy helm stable/redis
      helm install stable/redis
        It will generate random name: you can give your own name with
        helm install --name myredis stable/redis
      kubectl get secret --namespace default myredis-redis -o yaml 
        redis-password is in base64 so echo pastpassword |base64 --decode
    
    To connect to your Redis server:

        1. Run a Redis pod that you can use as a client:

          kubectl run --namespace default wistful-echidna-redis-client --rm --tty -i \
            --env REDIS_PASSWORD=$REDIS_PASSWORD \
          --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash

        2. Connect using the Redis CLI:
          redis-cli -h wistful-echidna-redis-master -a $REDIS_PASSWORD
          redis-cli -h wistful-echidna-redis-slave -a $REDIS_PASSWORD

        To connect to your database from outside the cluster execute the following commands:

            kubectl port-forward --namespace default svc/wistful-echidna-redis 6379:6379 &
            redis-cli -h 127.0.0.1 -p 6379 -a $REDIS_PASSWORD

      
    kubectl get pvc, pv 
    kubectl get deployment, services, pods
    helm list 
    helm delete myredis 

    - if you are in myredis server the check :
        - echo $REDIS_PASSWORD
    RESET HELM: helm reset --force 

26. Setting helm repo on s3:
      - make a setup-s3-helm-repo.sh script for create s3, install helm s3 plugin, initialize s3 plugin, add repo to helm 
        check connection with aws: aws sts get-caller-identity
        run : ./setup-s3-helm-repo.sh
      - helm repo list
      - make package and push on s3
        export AWS_REGION=yourregion 
        helm package your-helm-Demo(demo-chart)
        helm s3 push ./demo-chart.tgz my-charts
        helm search demo-chart : local and push both version 
        helm install my-charts/demo-chart 
        helm delete nameofdeployment

27. Helm charts with Jenkins:
    - kubectl create -f serviceaccount.yaml
    - helm install --name jenkins --set rbac.install=true,Master.RunAsUser=1000,Master.FsGroup=1000 stable/jenkins 
      printf $(kubectl get secret --namespace default jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
      execute notes command and get password and jenkins dashboard link
    - aws iam list-roles | grep learning-kubernetes.com (for rolename of nodes)
      nano put-bucket-policy.sh (policies)
      ./put-bucket-policy.sh
    - jenkins url: kubectl get svc -o wide (copy external ip and port:8080 past on crome tab)
                   export SERVICE_IP=$(kubectl get svc --namespace default jenkins --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
                      echo http://$SERVICE_IP:8080/login
