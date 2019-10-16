# Full GUI Build

Based on [Linux build instructions](https://www.virtualbox.org/wiki/Linux%20build%20instructions),
the following apt packages seem to work for a full GUI build on Ubuntu 18.04:


       gcc g++ bcc iasl xsltproc uuid-dev zlib1g-dev libidl-dev \
       libsdl1.2-dev libxcursor-dev libasound2-dev libstdc++5 \
       libpulse-dev libxml2-dev libxslt1-dev \
       python3-dev  libcap-dev \
       libxmu-dev mesa-common-dev libglu1-mesa-dev \
       linux-kernel-headers libcurl4-openssl-dev libpam0g-dev \
       libxrandr-dev libxinerama-dev makeself \
       libdevmapper-dev \
       texlive-latex-base \
       texlive-latex-extra texlive-latex-recommended \
       texlive-fonts-extra texlive-fonts-recommended \
       libc6-dev-i386 lib32gcc1 gcc-multilib \
       lib32stdc++6 g++-multilib \
       libssl-dev linux-headers-generic
       libqt4-dev qt4-dev-tools default-jdk libqt4-opengl-dev

Full build also seems to require these:

    libvpx-dev libopus-dev qt5-default libqt5* qttools5-dev-tools

