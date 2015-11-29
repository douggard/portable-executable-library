PWD=$(shell pwd)
OUTDIR = ../bin/
LIBPATH = ../../lib/libpebliss.a
NAME=$(shell basename $(PWD))
CXXFLAGS = -O2 -Wall -I../../pe_lib -I../

ifdef PE_DEBUG
CXXFLAGS  += -g -O0
endif

LDFLAGS = -L../../lib
LIBS = -lpebliss
ifneq ($(OS), Windows_NT)
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		LIBS += -liconv
	endif
endif

all: $(NAME)

clean:
	rm -f *.o
	rm -f $(OUTDIR)$(NAME)

$(NAME): main.o
	$(CXX) -Wall $^ $(LIBS) $(LDFLAGS) -o ${OUTDIR}$(NAME)

main.o: $(LIBPATH)

