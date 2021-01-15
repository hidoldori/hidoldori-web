apiVersion: v1
kind: Service
metadata:
  name: hidoldori-web
  labels:
    app: hidoldori-web
spec:
  ports:
    - port: 8080
      targetPort: 8080
  selector:
    app: hidoldori-web
  type: LoadBalancer
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hidoldori-web
  labels:
    app: hidoldori-web
spec:
  replicas: 2
  selector:
    matchLabels:
      app: hidoldori-web
  template:
    metadata:
      labels:
        app: hidoldori-web
    spec:
      containers:
        - name: hidoldori-web
          image: gcr.io/hidoldori-lab-cicd-project/hidoldori-web:SHORT_SHA
          ports:
            - containerPort: 8080