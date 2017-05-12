CXX=g++
#add -m32 if trying to build 32 
CFLAGS=-std=c++1y -O3 -s -fopenmp

nttg: nttg-avx2 nttg-sse2
	$(CXX) $(CFLAGS) -o nttg      main.cpp

nttg-avx2: 
	$(CXX) $(CFLAGS) -o nttg-avx2 main.cpp -mavx2 -DSIMD=AVX2 

nttg-sse2:
	$(CXX) $(CFLAGS) -o nttg-sse2 main.cpp -msse2 -DSIMD=SSE2

clean:
	rm nttg nttg-avx2 nttg-sse2
