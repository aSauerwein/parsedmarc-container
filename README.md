# parsedmarc-container

## Deprecated: use the upstream container

[parsedmarc](https://github.com/domainaware/parsedmarc) now publishes its own
Docker container image at **`ghcr.io/domainaware/parsedmarc`**. This repository's
container is superseded by that upstream image. Please use the upstream image
for new deployments and migrate existing `asauerwein/parsedmarc` deployments.

See the [upstream container package](https://github.com/domainaware/parsedmarc/pkgs/container/parsedmarc)
for available tags and digests, and the [upstream documentation](https://domainaware.github.io/parsedmarc/)
for configuration and usage. Pin a release tag or digest and test your existing
configuration and volume permissions when migrating; this repository uses an
Alpine-based image, so the runtime environment can differ.

## Historical image builds

This project builds Alpine-based Python images with parsedmarc installed.
For example, parsedmarc version `8.6.4` produces these image tags:

- `asauerwein/parsedmarc:latest`
- `asauerwein/parsedmarc:8`
- `asauerwein/parsedmarc:8.6`
- `asauerwein/parsedmarc:8.6.4`

These images are **not tested after build**.
