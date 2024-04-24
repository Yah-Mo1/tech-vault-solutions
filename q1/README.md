## 1. K8s deployment (Junior)

```bash

Scenario:

A company wants to roll out a web service built on Kubernetes. To make this happen, complete a file stub located at /home/ubuntu/tech-vault-q1/special-definition.yml with the steps that do the following:

- Creates a new namespace named "CyberCo".
- Deploys a new "redis" image (sourced from Dockerhub) using the "buster" tag, under a deployment named "cache-db", within the "CyberCo" namespace.
- Scales the "cache-db" deployment to have 2 replicas.
- Opens port "6379" on the "cache-db" containers.

**Notes:**

- The finalized solution will be assessed in a fresh, isolated environment. Make sure all the configurations are stored in the /home/ubuntu/tech-vault directory.
- All tasks must be completed with a single `sudo execute` command, launched from the question directory. (Hint: use alias)
- You have sudo permissions if needed.

```
