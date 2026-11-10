#!/usr/bin/env bash

container_id=$(podman --tls-ca /tekton-custom-certs/ca-bundle.crt create image-registry.openshift-image-registry.svc:5000/openshift/cli:latest)
podman cp $container_id:/usr/bin/oc /usr/bin/oc
podman cp $container_id:/usr/bin/kubectl /usr/bin/kubectl
podman rm $container_id
