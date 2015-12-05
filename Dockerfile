FROM	tsuru/play
WORKDIR /baasbox
RUN apt-get install unzip -y --force-yes
RUN wget --content-disposition http://www.baasbox.com/download/baasbox-stable.zip
RUN unzip baasbox*.zip
RUN rm baasbox*.zip
RUN mv baasbox-*/ baasbox/
RUN chmod +x baasbox/start
EXPOSE 9000
ENTRYPOINT baasbox/start
