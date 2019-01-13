# Application

### Build
```
docker build . --tag=docker-turnserver
```

/usr/bin/turnserver -a -v -L 0.0.0.0 --server-name coturn --static-auth-secret=mysecret -p 3478 --min-port 10000
