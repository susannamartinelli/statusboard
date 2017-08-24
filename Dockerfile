FROM scratch
ADD bin/server /
COPY ./assets /assets
COPY ./static /static
CMD ["/server"]
EXPOSE 8080