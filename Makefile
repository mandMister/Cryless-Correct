all: test.o
	g++ test.o -o Correct

test.o: test.cpp
	g++ -Wall -c test.cpp

clean:
	rm test.o