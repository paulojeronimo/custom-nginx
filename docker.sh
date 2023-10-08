#!/usr/bin/env bash
set -eou pipefail
cd $(dirname $0)
case "${1:-run}" in
    build) docker build -t custom-nginx .;;
    run) docker run -d --rm -p 8080:80 --name custom-nginx-container custom-nginx;;
    login) docker login;;
    tag) docker tag custom-nginx paulojeronimo/custom-nginx;;
    push) docker push paulojeronimo/custom-nginx;;
esac
