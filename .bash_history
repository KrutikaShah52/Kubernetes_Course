cd namespace/
ls
vim resourcequota.yaml 
vim helloworld-with-quotas.yaml 
vim helloworld-vo-quotas.yaml 
ls
rm helloworld-vo-quotas.yaml 
ls
vim helloworld-no-quotas.yaml 
vim defaults.yaml 
vim helloworld-no-quotas.yaml 
ls
mkdir TLS-on-ELB
ls t
ls
cd TLS-on-ELB/
ls 
cd ../a
cd ../app/
ls
cat hellonode-deployment.yaml 
cat hellonode-service.yaml
cp hellonode-deployment.yaml,hellonode-service.
pwd
cp hellonode-deployment.yaml,hellonode-service.yaml /home/ec2-user/TLS-on-ELB/
cp hellonode-deployment.yaml hellonode-service.yaml /home/ec2-user/TLS-on-ELB/
cd ../TLS-on-ELB/
ls
vim hellonode-service.yaml 
ls
cd autoscaling/
ls
cat hpa-example.yaml 
vim hpa-example.yaml 
kubectl get pods
kubectl get all
kubectl get delete deploy/wordpress-deployment svc/wordpress-service
kubectl delete deploy/wordpress-deployment svc/wordpress-service
kubectl create -f hpa-example.yaml 
kubectl get all
vim hpa-example.yaml 
kubectl get all
kubectl delete deploy/wordpress-deployment svc/wordpress-service
kubectl delete hpa/hpa-example-autoscaler deploy/hpa-example svc/hpa-example
kubectl create -f hpa-example.yaml 
kubectl get all
sudo docker images
kubectl run -i --tty load-generator --image=busybox /bin/bash
kubectl get all
kubectl describe po/load-generator-6646cf5b7c-tv7sl
kubectl delete deploy/load-generator
kubectl get all
vim hpa-example.yaml 
kubectl get all
kubectl delete svc/hpa-example hpa/hpa-example-autoscaler deploy/hpa-example
kubectl create -f hpa-example.yaml 
kubectl get all
kubectl describe po/hpa-example-578859b775-6twff
ls
nano hpa-example.yaml 
cp demo.yaml
cp hpa-example.yaml demo.yaml
nano demo.yaml 
kubectl get all
ls
kubectl delete -f hpa-example.yaml
ls
nano demo.yaml 
kubectl create -f demo.yaml 
kubectl delete -f demo.yaml 
nano demo.yaml 
kubectl create -f demo.yaml 
nano demo.yaml 
kubectl delete -f demo.yaml 
kubectl create -f demo.yaml 
kubectl get all
kubectl describe svc/hpa-example
curl http://100.70.61.152:5000
curl http://100.70.61.152:30200
curl http://172.31.19.124:30200
curl http://172.31.19.124:5000
curl http://18.209.45.195:5000
curl http://18.209.45.195:30200
kubectl get all
kubectl describe svc/hpa-example
kubectl describe po/hpa-example-9d75cd669-2mcmv
kubectl get all
kubectl describe po/hpa-example-9d75cd669-2mcmv
curl http://172.31.19.124:5000
curl http://172.31.19.124:30200
curl http://172.31.19.124:5000
kubectl describe po/hpa-example-9d75cd669-2mcmv
kubectl describe svc/hpa-example
ls
nano demo.yaml 
kubectl get all
kubectl delete rs/hpa-example-9d75cd669 hpa/hpa-example-autoscaler po/hpa-example-9d75cd669-2mcmv svc/hpa-example
ls
kubectl create -f demo.yaml 
nano demo.yaml 
kubectl create -f demo.yaml 
kubectl get all
curl http://172.31.19.124:5000
curl http://18.209.45.195:5000
curl http://18.209.45.195:31382
kubectl get all
ls
kubectl delete demo.yaml 
kubectl delete -f demo.yaml 
ls3
nano demo.yaml 
kubectl create -f demo.yaml 
kubectl get all
kubectl describe svc/hpa-example
curl http://ab5b3126dcd5b11e8a83c12286baf418-1328366915.us-east-1.elb.amazonaws.com
curl http://ab5b3126dcd5b11e8a83c12286baf418-1328366915.us-east-1.elb.amazonaws.com:5000
exit
exit
ls 
cd TLS-on-ELB/
ls
vim hellonode-service.yaml 
cd ..
cd wordpress/
ls
vim wordpress-single-deployment-no-volumes.yaml 
kubectl create -f wordpress-single-deployment-no-volumes.yaml 
kubectl create -f wordpress-service.yaml 
cat wordpress-secret.yaml 
kubectl create -f wordpress-secret.yaml 
kubectl get all
vim wordpress-single-deployment-no-volumes.yaml 
vim wordpress-service.yaml 
kubectl get all
kubectl delete public certificate transparency public certificate transparency
kubectl get all
kubectl delete deploy/wordpress-deployment svc/wordpress-service
kubectl get all
kubectl get rs
kubectl get all
kubectl delete po/wordpress-deployment-55b76d7746-jqm9p
kubectl get all
ls -la
kubectl create -f wordpress-single-deployment-no-volumes.yaml 
kubectl create -f wordpress-service.yaml 
kubectl get all
kubectl describe po/wordpress-deployment-55b76d7746-wk8kz
kubectl get all
ls
cd autoscaling/
ls
vim hpa-example.yaml 
cd ..
ls
mkdir helm
ls 
cd helm/
kubectl config current-context
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
ls
tar -xzvf helm-v2.9.1-linux-amd64.tar.gz
ls
cd linux-amd64/
ls
cat README.md 
cd ../..
ls
cd helm/
ls
sudo mv linux-amd64/helm /usr/local/bin/helm
helm -h
ls
vim helm-rbac.yaml
ls
kubectl create -f helm-rbac.yaml 
helm init --service-account tiller
kubectl get pods -n kube-system
helm search redis
helm install stable/redis
kubectl get pods
kubectl describe pods wobbly-vulture-redis-master-0
kubectl get pods
helm install stable/redis
kubectl get pods
kubectl get deployment 
kubectl delete deployment/calling-tiger-redis-slave
kubectl get deployment 
kubectl get pods
kubectl delete pods calling-tiger-redis-master-0
kubectl get pods
kubectl ge tdeployment
kubectl get deployment
kubectl get services
kubectl delete services calling-tiger-redis-master calling-tiger-redis-slave 
kubeclt get pods
kubectl get pods
kubectl get rs
kubectl get hpa
kubectl describe pods calling-tiger-redis-master-0
helm stateful state
helm statefulstate
helm stateful
helm list
helm delete calling-tiger
kubectl get pods
kubectl get services
heml describe wobbly-vulture
helm describe wobbly-vulture
kubectl get secret --namespace default yellow-pika-redis -o jsonpath
kubectl get secret --namespace default yellow-pika-redis 
kubectl get all
kubectl get secret --namespace default yellow-pika-redis -o yaml
echo ZmlRQXBGNTFOWA== |base64 --decode
kubectl run --namespace default yellow-pika-redis-client --rm --tty -i --env REDIS_PASSWORD=fiQApF51NX
kubectl run --namespace default yellow-pika-redis-client --rm --tty -i --env REDIS_PASSWORD=fiQApF51NX --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
kubectl run --yellow-pika-redis-client --rm --tty -i --env REDIS_PASSWORD=fiQApF51NX --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
kubectl run --namespace default yellow-pika-redis-client --rm --tty -i --env REDIS_PASSWORD=fiQApF51NX --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
kubectl kubectl run --namespace default wobbly-vulture-redis-client --rm --tty -i     --env REDIS_PASSWORD=$REDIS_PASSWORD 
kubectl run --namespace default wobbly-vulture-redis-client --rm --tty -i     --env REDIS_PASSWORD=$REDIS_PASSWORD    --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
heml list 
helm list 
helm delete wobbly-vulture yellow-pika
kubectl get pods
kubectl get deployment 
kubectl delete wobbly-vulture-redis-client yellow-pika-redis-client
kubectl delete deployment  wobbly-vulture-redis-client yellow-pika-redis-client
kubectl get services 
kubectl get all
helm search redis
helm delete stable/prometheus-redis-exporter
helm delete redis stable/prometheus-redis-exporter
helm install --name myredis stable/redis
kubectl get secret --namespace default myredis -o yaml
echo dWtWaWdPbXlYUw== | base64 --decode
kubectl get secret --namespace default myredis
kubectl run --namespace default myredis-client --rm --tty -i --env REDIS_PASSWORD=ukVigOmyXS --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
kubectl run --namespace default myredis-client --rm --tty -i --env REDIS_PASSWORD=ukVigOmyXS --image dobitnami/redis:4.0.11-debian-9 -- bash
kubectl run --namespace default myredis-client --rm --tty -i --env REDIS_PASSWORD=ukVigOmyXS --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
helm get all
helm list
kubectl get deployment
kubectl describe deployment myredis-client
kubectl get pods
kubectl get deployment
kubectl get svc
kubectl get pvc
helm list
helm delete myredis
kubectl get pods
kubectl get pvc
kubectl ge tpv
kubectl get pv
helm list 
kubectl get pv
kubectl ge tpv
kubectl get pvc
kubectl get pods
kubrctl get deployment
kubectl get deployment
kubectl get all
kubectl delete deployment myredis-client
kubectl get pods
kops get cluster
export KOPS_STATE_STORE=s3://kubernetes-learning-bucket
kops get cluster
kops edit ig --name=cluster1.learning-kubernetes.com nodes
kops update cluster cluster1.learning-kubernetes.com --yes
kops rolling-update cluster cluster1.learning-kubernetes.com --yes
 kubectl get pods
kubectl get deployment
kubectl get cluster
kops get cluster
helm list
kubectl get pods --namespace kube-system
helm search redis
helm install stable/redis
kubectl get deploye
kubectl get deployment
kubectl get pods
kubectl describe pods impressive-bat-redis-slave-586944b677-bvnqk
helm list 
helm delete impressive-bat
helm list 
kubectl get deployment 
kubectl get svc
kubectl get pods
helm search reids
helm search redis
helm delete stable/prometheus-redis-exporter
helm list 
helm install --name myredis stable/redis
helm get pvc
kubectl get pvc
kubectl delete pvc redis-data-calling-tiger-redis-master-0 redis-data-impressive-bat-redis-master-0 redis-data-myredis-master-0 redis-data-wobbly-vulture-redis-master-0 redis-data-yellow-pika-redis-master-0
kubectl get pvc
helm list 
kubectl get pods
kubectl get deployment 
helm search redis
helm delete --name myredis stable/prometheus-redis-exporter
helm delete myredis stable/prometheus-redis-exporter
helm install --name myredis stable/redis
helm del --purge myredis
 helm ls --all myredis
 helm ls --all
 helm ls 
helm search redis
helm install --name myredis stable/redis
kubectl get secret --namespace default myredis
kubectl get secret --namespace default myredis -o yaml
echo 'RWlEdW1idFZWbA==' | base64 --decode
echo RWlEdW1idFZWbA== | base64 --decode
kubectl get pods 
kubectl run --namespace default myredis-client --rm --tty -i --env REDIS_PASSWORD=EiDumbtVVl  --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
helm reset 
helm delete --all
helm list 
helm delete myredis
  
kubectl get pods 
helm resrt 
helm reset
helm reset --force
kubectl get deployment -n kube-system 
kubectl get pods -n kube-system 
helm search redis
helm delete redis 
helm delete myredis 
helm uninstall myredis 
helm home
helm get -h
helm home
rm -f /home/ec2-user/.helm
rm -R /home/ec2-user/.helm
ls
rm -R linux-amd64/
tar -xzvf helm-v2.9.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm
kubectl create heml-rbac.yaml
kubectl create -f heml-rbac.yaml

kubectl create -f helm-rbac.yaml 
helm init --service-account tiller
helm search redis 
kubectl get pods -n kube-system
helm install --name itredis stable/redis
helm list 
helm delete itredis
kubectl get pods -n kube-system
kubectl delete pods tiller-deploy-5c688d5f9b-cd46n
kubectl delete pod/tiller-deploy-5c688d5f9b-cd46n
kubectl delete pod/tiller-deploy-5c688d5f9b-cd46n -n kube-system
kubectl get pods -n kube-system
helm search redis 
cat helm-rbac.yaml 
 kubectl get clusterrolebinding
 kubectl delete clusterrolebinding/tiller
kubectl get serviceaccount
kubectl get serviceaccount -n kube-system
kubectl delete serviceaccount/tiller -n kube-system
 kubectl get clusterrolebinding
helm search redis
helm home
rm -R /home/ec2-user/.helm
pwd
rm -R /home/ec2-user/helm
ls
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
ls
https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
curl https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
wgetr https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
helm version
helm uninstall deis
helm ls --short | xargs -L1 helm delete
helm list
helm -h
kubectl get deployment -n kube-system
kubectl delete deployment -n kube-system/tiller-deploy
kubectl delete deployment/tiller-deploy -n kube-system
kubectl get pods -n kube-system
kubectl get svc -n kube-system
kubectl delete service/tiller-deploy -n kube-system
kubectl get pvc -n kube-system
kubectl get rs -n kube-system
kubectl get rc -n kube-system
helm uninstall --force
helm reset --force
helm init 
ls
vim helm-rbac.yaml
ls
vim helm-rbac.yaml chmod 777
ls -la 
sudo su
ls
nano h
ls
cd ..
ls
rm h
ls
cat helm-rbac.yaml 
rm helm-rbac.yaml 
ls
mkdir helm
whereis helm
rm -R /usr/local/bin/helm
sudo rm -R /usr/local/bin/helm
whereis helm
helm -h
cd helm/
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
tar -xzvf helm-v2.9.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm
vim helm-rbac.yaml
ls
helm list 
helm list -n kube-system
helm search redis 
apiVersion: v1
kind: ServiceAccount
metadata:
  name: tiller
  namespace: kube-system
---
apiVersion: rbac.authorization.k8s.io/v1beta1
kind: ClusterRoleBinding
metadata:
  name: tiller
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
  - kind: ServiceAccount
    name: tiller
helm search redis 
helm list 
helm list --namespace kube-system
kubectl create -f helm-rbac.yaml 
helm list 
helm list --namespace=kube-system
cat helm-rbac.yaml 
helm -h
helm init --service-account tiller 
kubectl get pods -n kube-system
helm search redis 
helm delet redis 
helm delete redis 
helm delete redis -n kube-system
helm delete redis --namespace= kube-system
helm delete redis --namespace=kube-system
helm delete redis n kube-system
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
elm init --service-account tiller --upgrade
helm init --service-account tiller --upgrade
helm delete redis -n kube-system
helm delete redis n kube-system
helm search redis 
helm delete stable/prometheus-redis-exporter 
helm delete redis/stable/prometheus-redis-exporter 
helm delete deploy /stable/prometheus-redis-exporter 
helm delete deployment /stable/prometheus-redis-exporter 
kubectl get pods -n kube-system
kubectl get deployment -n kube-system
kubectl get deplyment 
kubectl get deployment 
helm search redis 
helm install 
helm install stable/redis
kubectl get secret --namespace default wistful-echidna-redis
kubectl get secret --namespace default wistful-echidna-redis -o yaml 
echo OHJlMkpkVjRSTw== | base64 --decode 
kubectl run --namespace default wistful-echidna-redis-client --rm --tty -i     --env REDIS_PASSWORD=$REDIS_PASSWORD    --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
kubectl run --namespace default wistful-echidna-redis-client --rm --tty -i     --env REDIS_PASSWORD=8re2JdV4RO --image docker.io/bitnami/redis:4.0.11-debian-9 -- bash
kubectl get pvc
kubectl get pods 
helm delete wistful-echidna
kubectl get pods 
kubectl get pvc
kubectl delete pvc redis-data-itredis-master-0 redis-data-myredis-master-0 redis-data-wistful-echidna-redis-master-0
kubectl get pvc
kubectl get pv
helm upgrade
helm search mysql
helm create mychart 
ls
cd mychart/
ls
cd charts/
ls
cd ..
cat Chart.yaml 
vim values.yaml 
cd templates/
ls
vim deployment.yaml 
cd ..
rm -R mychart
exit 
ls 
cd helm/
ls
kubectl get pods 
helm list 
kubectl get all
kubectl get pods
kubectl get all
exit 
helm list 
helm delete rolling-lionfish --purge
helm list 
kubectl get pods 
ls
cd helm/
ls
mkdir helm-s3
ls 
cd helm-s3/
vim setup-s3-helm-repo.sh
aws sts get-caller-identity 
ls
ls -a
cd ..
ls
cd helm-s3/
ls
ls -la 
./setup-s3-helm-repo.sh
chmod 777 .
./setup-s3-helm-repo.sh
chmod 400 setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
ls -la
chmod 755 setup-s3-helm-repo.sh 
ls -la
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
git 
yum install git
sudo su
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
kubectl get pods 
kubectl get deployment 
cd autoscaling/
ls
vim demo.yaml 
kubectl get all
kubectl delete deploy/hpa-example svc/hpa-example
kubectl get all
kubectl delete hpa/hpa-example-autoscaler
kubectl get all
docker images 
sudo docker images 
kubectl create -f demo.yaml 
kubectl get all
kubectl describe po/hpa-example-54cb55c58b-74prk
curl https://18.215.237.124:5000
kubectl get all
ls
curl https://18.215.237.124:5000
curl 18.215.237.124:5000
ab -k -c 350 -n 20000  curl localhost:5000
yum install httpd-tools
sudo su
ab -k -c 350 -n 20000  curl localhost:5000
ab  -c 350 -n 20000  curl localhost:5000
ab -k -c 350 -n 20000  curl localhost:5000
ab -n 1000 -c 10 -k -H  http://18.215.237.124:5000
sudo ab -k -c 350 -n 20000  curl localhost:5000
ab -n 1000 -c 10 -k  http://18.215.237.124:5000
ab -n 10 -c 10 http://18.215.237.124:5000
ab -n 10 -c 10 18.215.237.124:5000
ab -n 10 -c 10 curl 18.215.237.124:5000
ab -n 10 -c 10 http://18.215.237.124:5000/
ab -n 10000 -c 10 http://18.215.237.124:5000/
ab -n 100000 -c 10 http://18.215.237.124:5000/
ab -n 1000000 -c 10 http://18.215.237.124:5000/
ab -n 1000000 -c 100 http://18.215.237.124:5000/
cd ..
ls
cd helm/
ls
helm list 
cd linux-amd64/
ls
helm create demo-chart 
ls
cd demo-chart/
ls
kubectl get all
kubectl delete deploy/hpa-example hpa/hpa-example-autoscaler svc/hpa-example
kubectl get all
ls
vim values.yaml 
cd charts/
ls
cd ...
cd ..
ls
vim values.yaml 
ls
cd templates/
ls
sudo docker images 
sudo docker run -it -d -p 3000:3000 krutika1052/hello_node
curl localhost:3000
docker ps
sudo docker ps
sudo docker exec c11a97e00c5b
sudo docker exec -it c11a97e00c5b
sudo docker exec -it c11a97e00c5b /bin/bash
sudo docker images
sudo docker ps 
sudo docker rm -f c11a97e00c5b
sudo docker run -it -d -p 8081:8081 krutika1052/hello_node
curl localhost:8081
sudo docker ps
docker rm -f 9a5ea9b75eab
sudo docker rm -f 9a5ea9b75eab
ls
vim deployment.yaml 
ls
vim deployment.yaml 
 cd ../charts/
heml dependency update 
helm dependency update 
cd ..
ls
vim Chart.yaml 
ls 
c
ls 
cd charts/
helm dependency update 
cd ..
ls charts/
helm dependency update 
cd charts/
ls
cd ..
helm install .
kubectl  get pods
 kubectl logs precise-porcupine-demo-chart-c7fbb59c5-hdh8v
kubectl get services 
kubectl get services  -o wide 
kubectl get svc -o wide 
ls
cd templates/
ls
vim service.yaml 
vim _helpers.tpl 
vim deployment.yaml 
cd ..
ls 
cat values.yaml 
helm list 
helm delete precise-porcupine
kubectl get all
vim values.yaml 
ls
helm intall .
helm install .
kubectl get all
kubectl get svc -o wide 
curl a25bb85b0d05a11e8a83c12286baf418-2102148997.us-east-1.elb.amazonaws.com
kubectl get pods 
kubectl describe rolling-lionfish-demo-chart-57b9865954-jcqpk
kubectl describe pods  rolling-lionfish-demo-chart-57b9865954-jcqpk
curl a25bb85b0d05a11e8a83c12286baf418-2102148997.us-east-1.elb.amazonaws.com
sudo docker images 
helm list 
helm upgrade --set image.tag=v2 rolling-lionfish
helm upgrade --set image.tag=v2 rolling-lionfish .
kubectl get svc -o wide 
curl a25bb85b0d05a11e8a83c12286baf418-2102148997.us-east-1.elb.amazonaws.com
sudo docker images 
sudo docker run -it -d -p 8081:8081 krutika1052/hello_node
curl localhost:8081
kubectl get pods 
helm upgrade --set image.tag=latest rolling-lionfish .
kubectl get pods 
kubectl get pods -w
helm history rolling-lionfish
helm rollback rolling-lionfish 1
kubectl get pods -w
kubectl get pods 
helm history rolling-lionfish
kubectl get pods 
cd helm/
ls 
cd helm-s3/
vim setup-s3-helm-repo.sh 
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
./setup-s3-helm-repo.sh
vim setup-s3-helm-repo.sh
ls -la
chmod 755 setup-s3-helm-repo.sh 
vim setup-s3-helm-repo.sh 
ls -la 
rm -f .setup-s3-helm-repo.sh.swp 
ls
ls -la
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
aws sts get-caller-identity
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
nano setup-s3-helm-repo.sh 
./setup-s3-helm-repo.sh
helm s3 init s3://helm-bcbn2sry/charts
nano setup-s3-helm-repo.sh 
y
helm repo list 
helm search demo-chart
helm search my-chart
vim setup-s3-helm.sh
./setup-s3-helm.sh 
ls
chmod 755 setup-s3-helm.sh 
ls
./setup-s3-helm.sh 
nano setup-s3-helm.sh 
./setup-s3-helm.sh 
nano setup-s3-helm.sh 
./setup-s3-helm.sh 
nano setup-s3-helm.sh 
./setup-s3-helm.sh 
nano setup-s3-helm.sh 
./setup-s3-helm.sh 
nano setup-s3-helm.sh 
./setup-s3-helm.sh 
helm repo list 
EXPORT AWS_REGION=us-east-1
export AWS_REGION=us-east-1
ls
cd ..
ls
cd helm-s3/
ls
pwd
cd ..
ls
cp helm-rbac.yaml /home/ec2-user/helm/helm-s3
cd helm-s3/
ls
helm package demo-chart 
ls
cd
ls
cd helm/
ls
cd helm-s3/
ls
helm install demo-chart 
helm create demo-chart 
ls
helm package demo-chart 
ls
 helm s3 push ./demo-chart-0.1.0.tgz my-charts
helm s3 push ./demo-chart-0.1.0.tgz my-charts
ls
cat helm-rbac.yaml 
ls
cd demo-chart/
ls
cd ..
ls
helm search demo-charts
helm search demo-chart
 helm s3 push ./demo-chart-0.1.0.tgz my-chart
./setup-s3-helm.sh 
helm repo list 
export us-east-1 
export AWS_REGION=us-east-1 
ls
helm s3 push ./demo-chart-0.1.0.tgz my-charts
helm search demo-chart
helm install my-charts/demo-chart
helm delete virtuous-fox
helm install my-charts/demo-chart
helm list 
helm delete bunking-sparrow laughing-olm terrifying-squid undercooked-wasp
helm list 
kubectl get all
exit 
ls
cd h elm
cd helm
ls
cd helm-s3/
ls
cd ..
ls
mkdir jenkins
cd jenkins/
kubectl get serviceaccount
whereis serviceaccount.yaml
nano serviceaccount.yaml
kubectl create -f serviceaccount.yaml 
helm install --name jenkins --set rbac.install=true,Master.RunAsUser=1000,Master.FsGroup=1000 stable/jenkins
printf $(kubectl get secret --namespace default jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
export SERVICE_IP=$(kubectl get svc --namespace default jenkins --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
echo http://$SERVICE_IP:8080/login
kubectl get cluster 
kops cluster 
kops -h
kubectl get cluster 
kubectl list cluster 
kops list cluster 
kops get cluster 
kubectl cluster-info
aws iam list-roles | grep learning-kubernetes.com
cd ..
ls
nano put-bucket-policy.sh
ls -la
chmod 755 put-bucket-policy.sh 
ls
./put-bucket-policy.sh 
cd jenkins/
ls
nano Jenkinsfile.build
kubectl get all
kubectl describe po/jenkins-7f6c77bb8-f4scg
kubectl get all
nano Jenkinsfile.build
cd ..
ls
mv helm-v2.9.1-linux-amd64.tar.gz /home/ec2-user
ls
mv linux-amd64/ /home/ec2-user/
ls
ls ..
cd jenkins/
ls
cd ..
ls
cd helm-s3/
ls
cp setup-s3-helm.sh /home/ec2-user/helm
rm setup-s3-helm-repo.sh 
ls
cd ..
ls
git init 
git add .
git commit -m "first commit"
git remote add origin git@github.com:KrutikaShah52/Helm_repo_Jenkins.git
git push -u origin master
sudo git push -u origin master
git remote add origin https://github.com/KrutikaShah52/Helm_repo_Jenkins.git
git remote rm origin
git remote add origin https://github.com/KrutikaShah52/Helm_repo_Jenkins.git
git push -u origin master
cd jenkins/
ls
namo Jenkinsfile.build 
nano Jenkinsfile.build 
cd ..
git status
git add .
git commit "Jenkinsfile-build"
git add .
git status 
git push origin master 
cd jenkins/
nano Jenkinsfile.build 
cd ..
git status
git add .
git commit -m "Jenkins-buils"
git push origin master 
cd jenkins/
nano Jenkinsfile.build 
y
cd helm/
cd jenkins/
nano Jenkinsfile.build 
cd ..
git status
git add .
git commit -m "JEnkinsfile "
git push origin master
cd jenkins/
nano Jenkinsfile.build 
y
ls
cd app
ls
cat hellonode-service.yaml.yaml 
rm hellonode-service.yaml.yaml 
ls
cat pod.yaml 
cd ..
ls
cd key/
ls
cd ..
ls
cd namespace/
ls
cd ..
cat sample-user.yaml 
kubectl get serviceaccount 
kubectl get namspace
kubectl get namespace
kubctl get all
kubectl get all
kubectl get services -o wide
ls
kubectl get all
kubectl get svc/jenkins
kubectl get svc/jenkins -o wide
kubectl describe deploy/jenkins
printf $(kubectl get secret --namespace default jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
export SERVICE_IP=$(kubectl get svc --namespace default jenkins --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
echo http://$SERVICE_IP:8080/login
pwd
ls
nano Steps\ Create\ Cluster 
mv helm-v2.9.1-linux-amd64.tar.gz linux-amd64/ /home
ls
pwd
cd ..
ls
sudo su
cd ec2-user/
ls
mv deployment\ steps README.md
ls
mv Steps\ Create\ Cluster Steps_cluster_creation
ls
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/KrutikaShah52/Kubernetes_Course.git
git push -u origin master
kubectl get all
kubectl get servcies -o wide
kubectl get svc -o wide
kubectl get deployment 
kubectl get pods 
kubectl get hpa
kubectl get serviceaccount
kubctl get namespace
kubectl get namespace
