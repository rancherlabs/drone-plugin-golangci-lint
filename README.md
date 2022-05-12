# drone-plugin-golangci-lint

Drone plugin for golangci-lint.

## Usage

The following snippet should be applied to the `.drone.yml` file:

```
kind: pipeline
name: golangci-lint

steps:
- name: golangci-lint
  image: rancher/drone-golangci-lint:latest
```

By default, this plugin will execute the `run` command per other CI documentation for golangci-lint.

## Reference

- [Drone Documentation: Example Bash Plugin](https://docs.drone.io/plugins/tutorials/bash)

- [golangci-lint CI Installation: Other CI](https://golangci-lint.run/usage/install/#other-ci)

