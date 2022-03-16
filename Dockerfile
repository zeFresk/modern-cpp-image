# Image pour construire du C++ moderne
# Basée sur clang et alpine
FROM archlinux:base-devel

# Compilation
RUN pacman -S --noconfirm clang afl llvm sdl make cmake autoconf tree gcovr lcov gcc tree doxygen ruby python asciidoctor
#make clang build-base llvm-static llvm-dev clang-static clang-dev clang-extra-tools cmake autoconf ruby gcovr doxygen tree gcc afl sdl sdl-dev lld
