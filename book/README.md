Oferim două metode de compilare a cărții în format PDF:

* compilarea nativă;
* compilarea folosind containere Docker.

## Compilarea nativă

Pentru a compila fișierele nativ pe un sistem Linux, veți avea nevoie de următoarele pachete:

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

Pe sistemele Debian / Ubuntu, puteți folosi următoarea comandă pentru a instala pachetele necesare:

```
apt install -y texlive-latex-base texlive-latex-extra texworks \
    texlive-lang-european inkscape \
    texlive-latex-recommended highlight build-essential
```

# Compilarea folosind Docker

Pentru a compila cartea într-un container Docker, rulați următoarea comandă:

```
make container-build
```
