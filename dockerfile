FROM kicad/kicad:nightly-full-arm64
# FROM kicad/kicad:8.0.4
# FROM kicad/kicad:latest

# Set environment variables if necessary
ENV DISPLAY=:0

WORKDIR /ws

COPY HDK HDK
COPY docs docs
COPY scripts scripts

VOLUME ["/ws/docs"]

# Make sure the scripts are executable
RUN chmod +x scripts/main.sh

CMD ["sh", "scripts/main.sh"]