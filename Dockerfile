# Use latest stable channel SDK.
FROM dart:stable AS build

RUN apt update
RUN apt install libsqlite3-dev -y
RUN apt update
RUN apt-get install -y sqlite3 libsqlcipher-dev

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

# Copy app source code (except anything in .dockerignore) and AOT compile app.
COPY . .
RUN dart compile exe bin/server.dart -o bin/server

# Build minimal serving image from AOT-compiled `/server`
# and the pre-built AOT-runtime in the `/runtime/` directory of the base image.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/
COPY --from=build /app/wabiz.db /app/bin/
COPY --from=build /usr/lib/aarch64-linux-gnu/libsqlite3.so.* /lib/
COPY --from=build /usr/lib/aarch64-linux-gnu/libsqlite3.so.* /app/bin/
COPY --from=build /usr/lib/aarch64-linux-gnu/libsqlite3.so /app/bin/

ENV PORT=3000
# Start server.
EXPOSE 8080
CMD ["/app/bin/server"]
