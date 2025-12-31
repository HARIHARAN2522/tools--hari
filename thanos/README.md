# Thanos Helm Chart

A Helm chart for deploying [Thanos](https://thanos.io/) — a highly available metrics system built on top of Prometheus.

## Prerequisites

- Kubernetes 1.19+
- Helm 3.2+
- A running Prometheus instance with Thanos Sidecar

## Installation

### Add the Repo (Optional)

```bash
helm repo add my-repo https://your-repo-url.com
helm repo update
