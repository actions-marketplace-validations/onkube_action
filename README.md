# Deploy your app to onkube.io Platform

This action deploys your Container Image to onkube.io Platform. 

## Usage

```yaml
- uses: onkube/action@v1.0.2
  env:
    ONKUBE_ACCESS_TOKEN: ${{ secrets.OKCTL_TOKEN }}
  with:
    args: "deploy -i httpd:alpine --port 80 --name httpd-test --public"

```