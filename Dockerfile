# Image pour construire du C++ moderne
# Basée sur clang et alpine
FROM alpine:3.15

# Compilation
RUN apk -U add make clang cmake autoconf ruby lcov doxygen tree gcc afl

#RUN pip install lcov_cobertura

# Génération de documentation
RUN gem install asciidoctor asciidoctor-pdf --pre
