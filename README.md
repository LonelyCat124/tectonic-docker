Docker image for the Hartree Intel Training Course.

```
docker pull lonelycat/tectonic-docker
```

Only **54MB** compressed.

A fully working latex engine. Packages that are not in the cache will be
downloaded on demand.

# Example: Gitlab CI

Create a `.gitlab-ci.yml` with the following content for very fast
pdf builds.

```yaml
pdf:
  image: lonelycat/tectonic-docker
  script:
    - tectonic my-document.tex
  artifacts:
    paths:
      - my-document.pdf
```
