FROM kicad/kicad:nightly-full

# Set environment variables if necessary
ENV DISPLAY=:0

RUN mkdir -p /ws/docs /ws/docs/checks /ws/docs/pcb /ws/docs/sch && \
    chmod -R 777 /ws/docs

WORKDIR /ws

COPY HDK HDK
COPY docs docs
COPY scripts scripts

# Make sure the scripts are executable
# RUN sudo chmod +x scripts/main.sh

CMD ["sh", "scripts/main.sh"]