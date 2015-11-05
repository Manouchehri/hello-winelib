CHK_SOURCES = main.c
CHK_SOURCES_C = $(filter %.c,$(CHK_SOURCES))

all:
	winegcc -w -O3 $(CHK_SOURCES_C) -o main

debug:
	winegcc -ggdb3 $(CHK_SOURCES_C) -o main

clean:
	-rm main.exe*
