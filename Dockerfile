FROM ubuntu:latest
MAINTAINER timxia
ENV REFRESHED_AT=2024-12-06
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yqq update
RUN apt-get -yqq install ruby-full build-essential zlib1g-dev
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN . ~/.bashrc
RUN gem install --no-document --no-force jekyll bundler jekyll-paginate jemoji
RUN gem update github-pages

VOLUME /data/
VOLUME var/www/html
WORKDIR /data
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 

