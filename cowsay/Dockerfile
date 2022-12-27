FROM ubuntu
COPY run_cowsay.sh /usr/local/bin/
RUN apt-get update && apt-get install -y cowsay
ENTRYPOINT ["/usr/local/bin/run_cowsay.sh"]

# Run image in -it mode