FROM scratch
ADD bin/server /
COPY assets /
COPY static /
CMD ["/server"]
EXPOSE 80