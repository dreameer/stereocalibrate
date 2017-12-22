INCLUDE = $(shell pkg-config --cflags opencv)
LIBS    = $(shell pkg-config --libs   opencv)

all:main.cpp 
	g++ -Wall -I $(INCLUDE) $(LIBS) -lpthread main.cpp -o main
clean:
	rm main
