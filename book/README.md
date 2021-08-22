# Book

The book "Utilizarea sistemelor de operare" is written and built using [LaTeX](https://www.latex-project.org/).

The main files are `uso.tex` and `chapter/main.tex`.
These include the `contents.tex` file in each chapter in the `chapters/` subfolder.
Each chapter subfolder consists of two entries:

* `contents.tex`: the actual LaTeX contents
* `img/`: images used in the chapter

Most images as SVG files, to allow contributions.

The LaTeX configuration is done via the `sty/book.cs.pub.ro.cls` file.

## Building

Building the book in PDF may be done using native packages or using a Docker container.
Build rules are part of the `Makefile`.

### Native Build

A native build requires the following packages:

```
texlive-latex-base
texlive-latex-extra
texworks
texlive-lang-european
inkscape
texlive-latex-recommended
highlight
build-essential
```

On Debian / Ubuntu, you may install the packages by running:

```
sudo apt install -y texlive-latex-base texlive-latex-extra texworks \
    texlive-lang-european inkscape \
    texlive-latex-recommended highlight build-essential
```

After this, while in the `book/` folder, simply run:

```
make
```

After a verbose run, the `uso.pdf` output file is generated.
Use your preferred PDF viewer to browse the book.

### Docker Build

To build the book using Docker, you have to have [Docker installed](https://docs.docker.com/get-docker/). Then, simply run:

```
make container-build
```

Similarly to the native build, after a verbose run, the `uso.pdf` output file is generated.
Use your preferred PDF viewer to browse the book.
