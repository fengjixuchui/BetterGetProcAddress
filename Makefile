FILE	=	BetterGetProcAddress.exe
SRC	=	$(FILE:.exe=.c) exports.c
OBJ	=	$(SRC:.c=.o)

CC	=	x86_64-w64-mingw32-gcc
CFLAGS	=	-Wall -Wextra -march=native -mtune=native -O3

$(FILE): $(OBJ)
	$(CC) $^ -o $@

exports.o: exports.c exports.h

$(OBJ):

.PHONY: clean
clean:
	rm -rf -- *.o  *.exe
