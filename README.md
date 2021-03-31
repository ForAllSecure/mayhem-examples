<h1 align="center">Mayhem Boilerplates</h1>

<p align="center">
  <img src=".images/mayhem-logo.png" alt="Hello World! of Mayhem Docker Images"/>
</p>

Mayhem Docker boilerplates / templates for most of the common programming languages—like a "Hello World!" but for Docker images to be used with Mayhem.

![visitors](https://visitor-badge.glitch.me/badge?page_id=ForAllSecure.examples)

---

## List Of Programming Languages

[![](https://img.shields.io/badge/C-%20-blue)](https://img.shields.io/badge/C-%20-blue)
[![](https://img.shields.io/badge/cpp-%20-blue)](https://img.shields.io/badge/cpp-%20-blue)
[![](https://img.shields.io/badge/go-%20-blue)](https://img.shields.io/badge/go-%20-blue)
[![](https://img.shields.io/badge/java-%20-blue)](https://img.shields.io/badge/java-%20-blue)
[![](https://img.shields.io/badge/python-%20-blue)](https://img.shields.io/badge/python-%20-blue)
[![](https://img.shields.io/badge/rust-%20-blue)](https://img.shields.io/badge/rust-%20-blue)

## Why Use Docker?

Mayhem performs behavioral testing where the application is dynamically ran and analyzed. In order to do so, Mayhem needs the complete application, including executable, libraries, and configuration files.

Docker is popular because it solves the problem of creating a reproducible environment. To quote from [Docker](https://docs.docker.com/get-started/):

> Docker is a platform for developers and sysadmins to develop, deploy, and run applications with containers. The use of Linux containers to deploy applications is called containerization. Containers are not new, but their use for easily deploying applications is.

A container runs natively on Linux, and shares the underlying runtime. Three key benefits of Docker that Mayhem leverages include:

1. **Isolation:** Docker provides a convenient way to isolate different apps, each of which may have different dependencies.
2. **Configuration-as-Code:**  When you create a Docker image, you write a `Dockerfile`, which gives the exact commands to build the image. The `Dockerfile` can be edited and revision controlled like any other text file.
3. **Efficiency:** Docker uses a layered file system, which means if two applications share the same files, you only need one copy.

## How Mayhem Uses Docker

Consider the problem of analyzing the Apache web server. When you start Apache, it writes a PID file. Writing that file is a *side effect*. We want runs to be reproducible, so Mayhem has to undo side effects on each run.

Therefore, Mayhem will automatically pull and run an application within a Docker image, and each time Mayhem runs the application, it:

1. Starts up a fresh copy of the image.
2. Runs the program specified in the `Mayhemfile`
3. Stops the image, deleting any side-effects.

Mayhem can launch a Docker image up to thousands of times per second. Each time the image is launched, a new process is created. Each time the process finishes, Mayhem (using Docker) cleans up any side-effects making sure the next run is fresh.

The images themselves are stored on a Docker registry. The largest registry is [hub.docker.com](https://hub.docker.com), which has tens of thousands of preconfigured applications. As part of your Mayhem install, there is also a *private* Docker registry. The private registry can be used to include your internal images, all within your own network or cloud.

Mayhem can run Docker images stored on either your private registry or Docker Hub. If you are storing your images on your private registry, you will need to specify that in the Mayhemfile.