CFLAGS += -std=c99 -Wall -Werror -pedantic

# Detect Windows
ifeq ($(OS),Windows_NT)
	BINARY = ipconfigstore.exe
else
	BINARY = ipconfigstore
endif

ipconfigstore:
	$(CC) -o $(BINARY) src/*.c $(CFLAGS)

clean:
	$(RM) ipconfigstore ipconfigstore.exe
