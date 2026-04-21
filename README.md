# CeKit Image Descriptor Library

This is a companion project to [https://github.com/cgruver/opinionated-dev-spaces](https://github.com/cgruver/opinionated-dev-spaces)

This project contains Module definitions and Image descriptors that are consumed by CeKit to build images for my lab environment

```bash
cekit --descriptor images/developer/base-dev-ubi9.yaml build podman --tag image-registry.openshift-image-registry.svc:5000/cekit-images/workspace-base:ubi9
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/workspace-base:ubi9

cekit --descriptor images/developer/base-dev-ubi10.yaml build podman --tag image-registry.openshift-image-registry.svc:5000/cekit-images/workspace-base:ubi10
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/workspace-base:ubi10

cekit --descriptor images/developer/base-dev-fedora.yaml build podman --tag image-registry.openshift-image-registry.svc:5000/cekit-images/workspace-base:fedora
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/workspace-base:fedora

cekit --descriptor images/app-product/vscode-dev.yaml build podman --build-flag --volume --build-flag /tmp/node-extra-certificates/ca.crt:/tmp/node-extra-certificates/ca.crt:Z --build-arg NODE_EXTRA_CA_CERTS=/tmp/node-extra-certificates/ca.crt --tag image-registry.openshift-image-registry.svc:5000/cekit-images/vscode-dev:latest
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/vscode-dev:latest

cekit --descriptor images/utility/vscode-builder.yaml build podman --build-flag --volume --build-flag /tmp/node-extra-certificates/ca.crt:/tmp/node-extra-certificates/ca.crt:Z --build-arg NODE_EXTRA_CA_CERTS=/tmp/node-extra-certificates/ca.crt --tag image-registry.openshift-image-registry.svc:5000/cekit-images/vscode-builder:latest
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/vscode-builder:latest

cekit --descriptor images/developer/ops-tools.yaml build podman --build-flag --volume --build-flag /tmp/node-extra-certificates/ca.crt:/tmp/node-extra-certificates/ca.crt:Z --build-arg NODE_EXTRA_CA_CERTS=/tmp/node-extra-certificates/ca.crt --tag image-registry.openshift-image-registry.svc:5000/cekit-images/ops-tools:latest
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/ops-tools:latest

cekit --descriptor images/app-product/ai-home-lab.yaml build podman --build-flag --volume --build-flag /tmp/node-extra-certificates/ca.crt:/tmp/node-extra-certificates/ca.crt:Z --build-arg NODE_EXTRA_CA_CERTS=/tmp/node-extra-certificates/ca.crt --tag image-registry.openshift-image-registry.svc:5000/cekit-images/ai-home-lab:latest
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/ai-home-lab:latest

cekit --descriptor images/app-product/cajun-navy.yaml build podman --build-flag --volume --build-flag /tmp/node-extra-certificates/ca.crt:/tmp/node-extra-certificates/ca.crt:Z --build-arg NODE_EXTRA_CA_CERTS=/tmp/node-extra-certificates/ca.crt --tag image-registry.openshift-image-registry.svc:5000/cekit-images/cajun-navy:latest
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/cajun-navy:latest

cekit --descriptor images/app-product/che-demo-app.yaml build podman --build-flag --volume --build-flag /tmp/node-extra-certificates/ca.crt:/tmp/node-extra-certificates/ca.crt:Z --build-arg NODE_EXTRA_CA_CERTS=/tmp/node-extra-certificates/ca.crt --tag image-registry.openshift-image-registry.svc:5000/cekit-images/che-demo-app:latest
podman push image-registry.openshift-image-registry.svc:5000/cekit-images/che-demo-app:latest
```
