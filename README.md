% Environnement JavaFX pour OpenJDK 8  
% Didier Richard  
% 2018/09/09

---

revision:
    - 1.0.0 : 2018/09/09

---

# Building #

```bash
$ docker build -t dgricci/javafx:$(< VERSION) .
$ docker tag dgricci/javafx:$(< VERSION) dgricci/javafx:latest
```

## Behind a proxy (e.g. 10.0.4.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.4.2:3128/ \
    --build-arg https_proxy=http://10.0.4.2:3128/ \
    -t dgricci/javafx:$(< VERSION) .
$ docker tag dgricci/javafx:$(< VERSION) dgricci/javafx:latest
```

# Use #

See `dgricci/stretch` README for handling permissions with dockers volumes.

```bash
$ docker run --rm dgricci/javafx:$(< VERSION)
Java Packager version 8.0

```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o javafx.pdf README.md`{.bash}
