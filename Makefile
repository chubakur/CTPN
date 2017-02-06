all:
	cython src/utils/cpu_nms.pyx
	gcc -shared -pthread -fPIC -fwrapv -O2 -Wall -fno-strict-aliasing \
		-I/opt/conda/include/python3.5m -I/opt/conda/lib/python3.5/site-packages/numpy/core/include -o src/utils/cpu_nms.so src/utils/cpu_nms.c
	rm -rf src/utils/cpu_nms.c
