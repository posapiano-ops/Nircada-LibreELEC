# NircadaOS Tooroto edition - Retro Arcade Emulation console

Nircada is a lightweight Linux distribution that transforms a small computer into a full blown emulation console.

* **Powerful** - Built on top of the famous RetroArch emulator, NircadaOS is able to emulate a large range of hardware and has some useful features such as Braid-like rewinding, joypad hotplug and video streaming.
* **User friendly** - NircadaOS is easy to setup and use. Once installed to your SD card, you just have to put your rom on the card, plug your joypad and enjoy your favorite old games. We also support PS3 and XBox360 controllers so you don't have to buy new ones. 
* **Low cost** - We try our best to keep the hardware required to run NircadaOS as cheap as possible. The software is optimized to run fast even on low end computers. The power can be supplied by any micro USB adapter like the one for your smartphone.
* **Open source** - Our code is free as in freedom and hosted on Github (though the project uses emulators that forbid commercialisation). We accept external contributions, and we do our best to integrate our own patches into upstream projects.

## Buinding instructions
```
$ git clone --branch Tooronto https://github.com/posapiano-ops/Nircada-LibreELEC.git 0.x.x
$ cd 0.x.x
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