x86 ASM development container
=============================

My own version of [JustAdam](https://github.com/JustAdam/docker-asm) container. I Added Nano and cloning code from files/ to our workspace. Also using root instead normal user. Here are steps you need to do if you want to compile and run your code. I also added bash and powershell scripts which does build and run steps. I added scripts which clears container and image from our computer. Just type 
```
./run.sh
```
 in your terminal or 
 ```
 ./run.ps1
 ``` 
 in your powershell and then 
 ```
 ./clear.sh 
 ```
 or 
 ```
 ./clear.ps1
 ```
when you are done.

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
$ touch file.o					# create "file.o"
$ as [..] file.s –o file.o 		# compile source code to „file.o”
$ ld [..] file.o –o file 		# Consolidation – result in executable file „file”
$ ./file 						# run program „file” from current directory(./) 
```