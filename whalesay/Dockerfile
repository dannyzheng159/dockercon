FROM ubuntu:14.04

# copy "run_whalesay.sh" from local file system into "/usr/local/bin/" directory
COPY run_whalesay.sh /usr/local/bin/

# install cowsay, and move the "default.cow" out of the way so we can overwrite it with "whale_default.cow"
RUN apt-get update && apt-get install -y cowsay --no-install-recommends && rm -rf /var/lib/apt/lists/* \
	&& mv /usr/share/cowsay/cows/default.cow /usr/share/cowsay/cows/orig-default.cow

# # "cowsay" installs to /usr/games
# ENV PATH $PATH:/usr/games

# copy "whale_default.cow" from local file system into "/usr/share/cowsay/cows" directory
COPY whale_default.cow /usr/share/cowsay/cows/
# copy other animals from local file system into "/usr/share/cowsay/cows" directory
COPY minato.cow /usr/share/cowsay/cows/
COPY kakashi.cow /usr/share/cowsay/cows/
COPY wizard.cow /usr/share/cowsay/cows/
COPY velociraptor.cow /usr/share/cowsay/cows/
COPY super-wasp.cow /usr/share/cowsay/cows/

# create a symbolic link from "default.cow" file to "whale_default.cow"
# by default, cowsay uses the "default.cow" file to determine the ASCII art to display. 
# by creating a symbolic link from "default.cow" to "whale_default.cow", the cowsay command will use the ASCII art from the "whale_default.cow" file instead of the default ASCII art.
RUN ln -sv /usr/share/cowsay/cows/whale_default.cow /usr/share/cowsay/cows/default.cow

ENTRYPOINT ["/usr/local/bin/run_whalesay.sh"]

# Run image in -it mode