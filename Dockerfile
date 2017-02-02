FROM ruby
RUN mkdir -p /root/cabacos
WORKDIR /root/cabacos
RUN gem install jekyll bundler
