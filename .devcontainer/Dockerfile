FROM 2970298425/guacd:dev2

ENV CFLAGS="-I${PREFIX_DIR}/include"
ENV LDFLAGS="-L${PREFIX_DIR}/lib"
ENV PKG_CONFIG_PATH="${PREFIX_DIR}/lib/pkgconfig" 
# Ensure thread stack size will be 8 MB (glibc's default on Linux) rather than
# 128 KB (musl's default)
ENV LDFLAGS="$LDFLAGS -Wl,-z,stack-size=8388608"
