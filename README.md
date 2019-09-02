# Messenger

A messaging app using grpc, photo buffers, docker.

# Command for running

```bash
go get .
go run main.go // for server
```

```bash
cd client 
go run main.go // for client (as many as you want)
```

# Command for docker

```bash
docker build --tag=messenger  
docker run -it -p 8080:8080 messenger
```
