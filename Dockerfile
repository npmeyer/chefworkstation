FROM chef/chefworkstation:latest
ENV CHEF_LICENSE=accept-no-persist
RUN apt-get update
RUN apt-get install -y build-essential
RUN chef gem install chef-vault-testfixtures
RUN chef gem install kitchen-docker
RUN chef gem install knife-inspect
CMD ["/bin/bash"]
