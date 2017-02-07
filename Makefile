all:
	cython src/ctpn_utils/cpu_nms.pyx
	gcc -shared -pthread -fPIC -fwrapv -O2 -Wall -fno-strict-aliasing \
		-I/opt/conda/include/python3.5m -I/opt/conda/lib/python3.5/site-packages/numpy/core/include -o src/ctpn_utils/cpu_nms.so src/ctpn_utils/cpu_nms.c
	rm -rf src/ctpn_utils/cpu_nms.c
