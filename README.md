x86 ASM development container
=============================

Vim is the editor installed with syntax highlighting via [vim-gas](https://github.com/Shirk/vim-gas/).
Source code is loaded in to the container via a volume.  Version control should be done outside of the container.

### Build the container

```
$ docker build -t asmx86 .
```

### Start the container

```
$ docker run -it --name asm-dev asmx86
```

### Get back into the container

```
$ docker start -ai asm-dev
```


### Compile asm code

```
$ as [..] plik.s –o plik.o 	# kompiluj plik źródłowy – wynik w pliku „plik.o”
$ ld [..] plik.o –o plik 	# konsoliduj – wynik w pliku wykonalnym „plik”
$ ./plik 					# uruchom program „plik” z katalogu bieżącego (./) 
```