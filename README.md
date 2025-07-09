# Copier Spire UV

[![ci](https://github.com/pawamoy/copier-uv/workflows/ci/badge.svg)](https://github.com/pawamoy/copier-uv/actions?query=workflow%3Aci)
[![documentation](https://img.shields.io/badge/docs-mkdocs%20material-blue.svg?style=flat)](https://pawamoy.github.io/copier-uv/)
[![gitter](https://badges.gitter.im/join%20chat.svg)](https://app.gitter.im/#/room/#copier-uv/community:gitter.im)

[Copier](https://github.com/copier-org/copier) template
for Python projects managed by [uv](https://github.com/astral-sh/uv).

Similar templates:

- [copier-pdm](https://github.com/pawamoy/copier-pdm), with [PDM](https://github.com/pdm-project/pdm)
- [copier-poetry](https:///github.com/pawamoy/copier-poetry), with [Poetry](https://github.com/python-poetry/poetry)
- [copier-uv](https://github.com/pawamoy/copier-uv)

## Features

- [uv](https://github.com/astral-sh/uv) setup, with pre-defined `pyproject.toml`
- Tests run with [pytest](https://github.com/pytest-dev/pytest)
- Documentation built with [Sphinx](https://github.com/sphinx-doc/sphinx)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- Support for GitHub workflows
- All licenses from [choosealicense.com](https://choosealicense.com/appendix)
- As well as the flexible combination of the above.

## Quick setup and usage

To use the template, run:

```bash
copier copy --trust https://github.com/sicheng1806/copier-spire-uv.git /path/to/your/new/project
```

Or even shoter:

```bash
copier copy --trust gh:sicheng1806/copier-spire-uv /path/to/your/new/project
```
