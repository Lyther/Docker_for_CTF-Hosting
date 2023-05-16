#!/usr/bin/env bash

echo $FLAG > ./flag.txt
touch ./$FLAG

export FLAG=not_flag
FLAG=not_flag

xinetd -dontfork