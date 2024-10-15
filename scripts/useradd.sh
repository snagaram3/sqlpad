RUN groupadd -r -g 10000 sqlpad && useradd -r -m -u 10000 -g sqlpad sqlpad

RUN mkdir -p /var/lib/sqlpad && chown -R sqlpad:sqlpad /var/lib/sqlpad

RUN sed -i '/^root:x:0:0:root:\/root:\/bin\/bash$/d' /etc/passwd \
    && echo "sqlpad:x:10000:10000:sqlpad User:/home/sqlpad:/bin/sh" >> /etc/passwd 
