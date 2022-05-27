# Image pour construire du C++ moderne
# Basée sur clang et alpine
FROM archlinux:base-devel

# Compilation
RUN pacman -Syu --noconfirm clang llvm sdl2 xorg-server-xvfb make cmake autoconf tree gcc doxygen ruby python python-pip git boost zlib sfml
#make clang build-base llvm-static llvm-dev clang-static clang-dev clang-extra-tools cmake autoconf ruby gcovr doxygen tre gcc afl sdl sdl-dev lld

RUN pip install lcov_cobertura
RUN gem install --no-user-install asciidoctor asciidoctor-pdf

ENV DISPLAY=:1
ENV XDG_RUNTIME_DIR=/tmp

CMD ["Xvfb", ":1"]
