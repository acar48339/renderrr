FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl git build-essential && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

# Optionally install dependencies
# Example for Node.js:
# RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
#     apt-get install -y nodejs && \
#     npm install

# Example for Python:
# RUN apt-get install -y python3 python3-pip && \
#     pip3 install -r requirements.txt

EXPOSE 8080

CMD ["bash"]