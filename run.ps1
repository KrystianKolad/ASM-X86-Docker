$build = "docker build -t asmx86 ."
$run = "docker run -it --name asm-dev asmx86"
iex $build
iex $run