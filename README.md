# ansible-later

[![Current Tag](https://img.shields.io/github/v/tag/actionhippie/ansible-later?sort=semver)](https://github.com/actionhippie/ansible-later) [![Docker Build](https://github.com/actionhippie/ansible-later/workflows/docker/badge.svg)](https://github.com/actionhippie/ansible-later/actions/workflows/docker.yml)

[GitHub Action](https://github.com/features/actions) to lint Ansible roles.

## Usage

```yml
name: Example

on:
  - push
  - pull_request

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - uses: actionhippie/ansible-later@v1
        with:
          config: optional/path/to/.later.yml
```

## Inputs

### `config`

Path to configuration file

### `rules`

Path to standard rule files

### `filter`

Limit standards to given IDs

### `exclude`

Exclude standards by given IDs

### `verbose`

Increase logging level, defaults to `false`

### `path`

Path of files/folders to inspect

## Outputs

None

## Security

If you find a security issue please contact thomas@webhippie.de first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

* [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2021 Thomas Boerger <thomas@webhippie.de>
```
