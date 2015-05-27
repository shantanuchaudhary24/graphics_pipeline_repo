CXX=g++
EXE=bin/run
FILES= src/polygon.cpp  src/matrix.cpp src/transformations.cpp src/frustum.cpp src/clipping.cpp src/scene.cpp src/parser.cpp src/main.cpp
COMPILE=-c
LINK=-o
OBJECTS= obj/polygon.o obj/matrix.o obj/transformations.o obj/frustum.o obj/clipping.o obj/scene.o obj/parser.o obj/main.o
OBJDIR= obj/
LIBS= -lGL -lGLU -lglut -lm
DISABLE_WARNING=-w

all: run

build:
	$(CXX) $(COMPILE) $(FILES)  $(LIBS)
	mv *.o $(OBJDIR)
	$(CXX) $(LINK) $(EXE) $(OBJECTS) $(LIBS)

run: build
	./$(EXE)

clean:
	rm -rf $(EXE)
	rm -rf $(OBJECTS)
	rm -rf *.h~ *.cpp~ *Makefile~
