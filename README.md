# fandogh-drone

If you are using [Drone CI](https://drone.io/) and [Fandogh PaaS](https://fandogh.cloud/), you can use this drone plugin!

Example for [.drone.yml](https://docs.drone.io/pipeline/docker/overview/):
```
- name: update-fandogh

  image: amirbagh75/fandogh-drone:latest
  settings:
    username: 
      from_secret: fandoghuser
    password: 
      from_secret: fandoghpass
    version: ${DRONE_COMMIT}
    manifest_path: ./fandogh.yml

  when:
    branch:
    - master
```        