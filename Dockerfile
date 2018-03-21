FROM python:3

# Install latex packages
RUN apt-get update \
  && apt-get install -y \
    pdf2svg \
    texlive \
    texlive-latex-extra \
    texlive-fonts-extra \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install pandoc
ARG PANDOC_URL=https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
RUN \
  curl -L -o /tmp/pandoc.deb $PANDOC_URL \
  && dpkg -i /tmp/pandoc.deb \
  && rm /tmp/pandoc.deb

WORKDIR /tmp

ENTRYPOINT ["pdflatex"]
