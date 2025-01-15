GPPPARAMS = -m32
ASPARAMS = --32
LPDARAMS = -melf_i386

objects = loader.o kernel.o 

%.o: %.cpp
	g++ $(GPPPARAMS) -o $@ -c $<

