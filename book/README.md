Oferim două metode de compilare a cărții în format PDF:

* compilarea nativă;
* compilarea folosind containere Docker.

## Compilarea nativă

Pentru a compila fișierele pe sistemul vostru veți avea nevoie de următoarele
pachete:
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

Pe sistemele bazate pe distribuția Ubuntu, puteți folosi următoarea comandă
pentru a instala dependențele:

```
apt-get install -y texlive-latex-base texlive-latex-extra texworks \
    texlive-lang-european inkscape \
    texlive-latex-recommended highlight build-essential
```

# Compilarea folosind Docker

Pentru a compila cartea folosind containere este suficient să rulați următoarea
comandă:

```
make container-build
```
