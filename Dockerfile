# Image pour construire du C++ moderne
# Basée sur clang et alpine
FROM archlinux:base-devel

# Compilation
RUN pacman -Syu --noconfirm clang afl llvm sdl2 xf86-video-dummy xorg-apps make cmake autoconf tree gcovr lcov gcc tree doxygen ruby python asciidoctor
#make clang build-base llvm-static llvm-dev clang-static clang-dev clang-extra-tools cmake autoconf ruby gcovr doxygen tre gcc afl sdl sdl-dev lld

RUN gem install --no-user-install asciidoctor asciidoctor-pdf

COPY xorg.conf /etc/X11/xorg.conf

ENV DISPLAY=:1
ENV XDG_RUNTIME_DIR=/tmp

CMD ["/usr/bin/Xorg", "-noreset", "+extension", "GLX", "+extension", "RANDR", "+extension", "RENDER", "-logfile", "./xdummy.log", "-config", "/etc/X11/xorg.conf", ":1"]
