CC=gcc
CFLAGS=-c -Wall -DHAS_SOCKLEN_T -I. -fPIC
LDFLAGS=
SOURCES=list.c callbacks.c compress.c host.c packet.c protocol.c peer.c unix.c
OBJECTS=$(SOURCES:.c=.o)
LIBRARY=../bin/linux/libenet.a


all: $(SOURCES) $(LIBRARY)
	
$(LIBRARY): $(OBJECTS) 
	mkdir -p ../bin/linux
	#gcc -shared -o $(LIBRARY) $(OBJECTS)
	ar rcs $(LIBRARY) $(OBJECTS)

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(LIBRARY) 
	rm -f *.o
