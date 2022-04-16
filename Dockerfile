# Image pour construire du C++ moderne
# Basée sur clang et alpine
FROM archlinux:base-devel

# Compilation
RUN pacman -Syu --noconfirm clang afl llvm sdl2 xf86-video-dummy make cmake autoconf tree gcovr lcov gcc tree doxygen ruby python asciidoctor
#make clang build-base llvm-static llvm-dev clang-static clang-dev clang-extra-tools cmake autoconf ruby gcovr doxygen tree gcc afl sdl sdl-dev lld

RUN gem install --no-user-install asciidoctor asciidoctor-pdf
