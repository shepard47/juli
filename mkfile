o=\
	main.o\
    microui.o\

c=-fplan9-extensions -Wall -Igl
l=-lSDL3 -ljulia -lSDL3_ttf
i=-I/usr/include/julia
h=\
    microui.h\

%.o: %.c
	gcc $c -c $stem.c -o $stem.o $i

test: $o $h
	gcc $l -o test $o

clean:V:
	rm -f $o
nuke: clean
	rm -f test
