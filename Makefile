LFLAGS = -lX11 -lGL -lpthread -lpng -lstdc++fs -std=c++17

a.out: build
	g++ -o TurnBase main.o olcPixelGameEngine.o game.o $(LFLAGS)
run-linux: a.out
	./TurnBase
	
main.o: src/main.cc src/olcPixelGameEngine.cc include/olcPixelGameEngine.h src/game.cc include/game.h
	g++ -c src/main.cc -I include/

olcPixelGameEngine.o: src/olcPixelGameEngine.cc include/olcPixelGameEngine.h
	g++ -c src/olcPixelGameEngine.cc -I include/

game.o: include/game.h src/game.cc include/olcPixelGameEngine.h 
	g++ -c src/game.cc -I include/


build: main.o olcPixelGameEngine.o game.o 

clean:
	-del *.o
	-rm *.o
