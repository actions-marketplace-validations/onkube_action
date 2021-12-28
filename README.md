# Deploy your app to onkube.io Platform

This action deploys your Container Image to onkube.io Platform. 

## Inputs

## `image`

**Required** Image URL (ex. docker.io/library/nginx:latest)
## `token`

**Required** onkube token (ex. do okctl login to get one)

## Outputs

## `url`

The URL of the deployment

## Example usage

```yaml
uses: onkube/action@v1
with:
  token: '<your token>'
  image: docker.io/library/nginx:latest
```