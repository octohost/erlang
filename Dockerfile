FROM octohost/build-essential-saucy

RUN curl -O http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb && rm -f erlang-solutions_1.0_all.deb && apt-get update
RUN apt-get install -y esl-erlang

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*