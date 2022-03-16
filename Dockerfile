# Image pour construire du C++ moderne
# Basée sur clang et alpine
FROM archlinux:base

# Compilation
RUN pacman -S clang afl llvm sdl make cmake autoconf tree gcovr lcov gcc tree doxygen ruby python
#make clang build-base llvm-static llvm-dev clang-static clang-dev clang-extra-tools cmake autoconf ruby gcovr doxygen tree gcc afl sdl sdl-dev lld

#RUN pip install lcov_cobertura

# Génération de documentation
RUN gem install asciidoctor asciidoctor-pdf --pre
