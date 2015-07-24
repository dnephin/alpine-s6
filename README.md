
alpine and s6 in a container
============================

s6 is used as an init system to handle signals so that `docker stop` and
`kill -s TERM` properly shutdown the container. It is not used to run multiple
processes.

* ENV is propagated correctly
* stdout/stderr is propagated correctly


```
    docker build -t signals .
    docker run --name signals signals
    docker stop signals
```
