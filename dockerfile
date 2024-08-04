FROM kicad/kicad:nightly-full

LABEL author="Scott CJX"
LABEL version="1.0.0"

# make container root user
USER 0

# Set environment variables if necessary
ENV DISPLAY=:0

WORKDIR /ws


RUN mkdir -p /ws/docs/

COPY HDK HDK
COPY docs docs
COPY scripts scripts

WORKDIR /ws/docs

CMD ["sh", "/ws/scripts/main.sh"]