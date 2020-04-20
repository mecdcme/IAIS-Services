FROM postgres
 volume pgdata:/var/lib/postgresql/data
 ENV POSTGRES_USER=postgres
 ENV POSTGRES_PASSWORD=postgres
 ENV POSTGRES_DB=postgres
 COPY  ./meta-service/db/iais-meta-create.sql /docker-entrypoint-initdb.d/
 COPY  ./meta-service/db/iais-meta-insert.sql /docker-entrypoint-initdb.d/
