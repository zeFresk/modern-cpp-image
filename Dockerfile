# Image pour construire du C++ moderne
# Basée sur clang et alpine
FROM archlinux:base-devel

# Compilation
RUN pacman -Syu --noconfirm clang afl llvm sdl2 wayland sway wayvnc make cmake autoconf tree gcovr lcov gcc tree doxygen ruby python asciidoctor
#make clang build-base llvm-static llvm-dev clang-static clang-dev clang-extra-tools cmake autoconf ruby gcovr doxygen tre gcc afl sdl sdl-dev lld

RUN gem install --no-user-install asciidoctor asciidoctor-pdf

COPY config ~/.config/sway/config
ENV WLR_BACKENDS=headless
ENV WLR_LIBINPUT_NO_DEVICES=1
ENV WLR_RENDERER_ALLOW_SOFTWARE=1
ENV XDG_RUNTIME_DIR=/tmp
ENV XDG_SESSION_TYPE=wayland
#COPY sway.service /etc/systemd/user/sway.service
#COPY wayvnc.service /etc/systemd/user/wayvnc.service
#RUN useradd gui
#COPY script.sh script.sh

#CMD [ "./script.sh" ]
