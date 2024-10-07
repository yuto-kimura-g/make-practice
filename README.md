# Makefile の練習

> **NOTE**: Linux環境を想定しています．Windowsだと`.bin`拡張子は動かないかも．

```bash
$ make --version
GNU Make 4.3
Built for x86_64-pc-linux-gnu
Copyright (C) 1988-2020 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
```

## main1
```bash
# １コマンドでコンパイルから実行までできる．便利．
$ make main1
gcc  -c main1.c
gcc  -c sub1.c
gcc  -o main1.bin main1.o sub1.o
./main1.bin
main1.c: main()
sub1.c: subf()
macro1: max(1,3)=3

# 生成されたファイルを消す
# -fオプションで，もともと無かった場合のエラーを無視
$ make clean
rm -f *.o *.bin
```

## main2
```bash
# とりあえず実行
$ make main2
gcc  -c main2.c
gcc  -o main2.bin main2.o
./main2.bin
main2.c: main()

# もう一回実行してみる

$ make main2
./main2.bin
main2.c: main()
# コンパイルされず，実行だけされる（えらい）

# ファイルを編集してみる
$ make main2
gcc  -c main2.c
gcc  -o main2.bin main2.o
./main2.bin
main2.c: main()
updated
# この場合は，ちゃんとコンパイルしてから実行される
```
