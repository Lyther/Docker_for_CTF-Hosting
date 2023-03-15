# README.md

Use xintd for ctf environment.

## FQA

Q: how to replace `easy_one` to my pwn file?

A: add your file into `files/` folder, and change the name in `ctf.xintd`.



Q: how to deal with library like `libc.so.6`?

A: find out linux distribution of the environment. If the challenge uses `debian`, you should change `ubuntu:18.04` in `Dockerfile` to `Debian`. Put all library files into `files/` folder.