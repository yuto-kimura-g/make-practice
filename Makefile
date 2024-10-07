# パラメータの設定
CC = gcc
CFLAGS =
# CFLAGS = -Wall -Wextra

# .PHONY: <target>
# 以下のターゲットは強制的に実行して上書きする
.PHONY: clean main1 main2

# hello ターゲット
hello:
	echo "Hello, Makefile World!"

# *.o <- *.c
# 任意のhoge.o: hoge.cに対応
# %.o: %.c
# 	$(CC) $(CFLAGS) -c $<

# main1 ターゲット
# 必要な依存を順に書いている（順不同）
main1: main1.bin
	./main1.bin
# *.bin <- *.o
main1.bin: main1.o sub1.o
	$(CC) $(CFLAGS) -o main1.bin main1.o sub1.o
# *.o <- *.c, *.h
main1.o: main1.c sub1.h h1.h
sub1.o: sub1.c sub1.h

# main2 ターゲット
main2: main2.bin
	./main2.bin
# *.bin <- *.o
main2.bin: main2.o
	$(CC) $(CFLAGS) -o main2.bin main2.o
# *.o <- *.c
main2.o: main2.c

# -f: "No such file or directory"を無視する
clean:
	rm -f *.o *.bin
