FROM kicad/kicad:nightly-full

# Set environment variables if necessary
ENV DISPLAY=:0

WORKDIR /ws

COPY HDK HDK
COPY docs docs
COPY scripts scripts

VOLUME ["/ws/docs"]

# Make sure the scripts are executable
# RUN sudo chmod +x scripts/main.sh

CMD ["sh", "scripts/main.sh"]