# Docusaurus Docs Helm Chart

Deploys a static Docusaurus documentation site using NGINX.

## Usage

1. Build your Docusaurus site into a Docker image
2. Push it to a registry (e.g., GHCR, Docker Hub)
3. Deploy with Helm:

```bash
helm install my-docs ./docusaurus-helm \
  --set image.repository=ghcr.io/you/docs \
  --set image.tag=v1 \
  --set ingress.enabled=true \
  --set ingress.host=docs.yourcompany.com
