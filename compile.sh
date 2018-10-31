#!/bin/sh
echo REMOVING PREVIOUS COMPILED FILE
rm -f main
echo COMPILING FOR LINUX 🐧
env GOOS=linux go build -o main *.go
echo ZIPPING FOR AWS LAMBDA 👷️
zip main.zip main .env
echo DONE 🍾
