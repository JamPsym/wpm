CC = g++ -std=c++11
CPPFLAGS = -Wall -g3 -O0
OBJS = main.o paragraph_reader.o

default: wpm.exe

wpm.exe : $(OBJS)
	$(CC) $(CPPFLAGS) $(OBJS) -o $@

$(OBJS) : %.o : src/%.cpp inc/%.hpp
	$(CC) $(CPPFLAGS) -c $< -o $@

.PHONY : clean

clean : 
	rm -rf *.o
