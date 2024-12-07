# OpenCarbon

## Open Carbon Docker Setup

This repository provides a Docker-based setup for running Carbon projects. Follow these steps to build and run the Docker image.

---

## Prerequisites

Ensure you have the following installed on your system:

- [Docker](https://www.docker.com/products/docker-desktop) (latest version)
- PowerShell or a terminal to run commands

---

## Cloning the Repository

Start by cloning this repository and navigating to the `src` directory:

```bash
git clone https://github.com/IlanVinograd/openCarbon.git
cd openCarbon/src

## Building and Running the Docker Image

To build and run the Docker image in a single step, execute the following command:

```docker build -t open_carbon . ; docker run --rm -it open_carbon