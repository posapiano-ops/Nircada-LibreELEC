# NircadaOS 0.3.x (Tooroto edition) - Retro Arcade Emulation console

NircadaOS is a lightweight Linux distribution that transforms a small computer into a full blown emulation console.

This project is a fork of https://github.com/libretro/Lakka-LibreELEC version 2.3.2
includes:
* LibreELEC 8.2.5
* Linux 4.11
* RetroArch 1.8.4

## Buinding instructions
```
$ git clone --branch Tooronto https://github.com/posapiano-ops/Nircada-LibreELEC.git
$ docker system prune -a
$ docker build -t nircada .
```
Once inside the docker container,
```
$ docker run --rm -it -v $(pwd):/root nircada
```
 you can start building e.g,.
 ```
$ DISTRO=NircadaOS PROJECT=RPi2 ARCH=arm make image
```
analog:
```
#   DISTRO=NircadaOS PROJECT=Generic ARCH=x86_64 make image
#   DISTRO=NircadaOS PROJECT=Generic ARCH=i386 make image
#   DISTRO=NircadaOS PROJECT=RPi ARCH=arm make image
```
result in **target/** directory

Rebuild:
```
DISTRO=NircadaOS PROJECT=RPi2 ARCH=arm make clean
```
Packages:
```
$ DISTRO=NircadaOS PROJECT=RPi ARCH=arm scripts/clean yourpackage
$ DISTRO=NircadaOS PROJECT=RPi ARCH=arm scripts/build yourpackage
$ DISTRO=NircadaOS PROJECT=RPi ARCH=arm scripts/install yourpackage
```