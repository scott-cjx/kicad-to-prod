FROM kicad/kicad:nightly-full

LABEL author="Scott CJX"
LABEL version="1.0.0"

# Set environment variables if necessary
ENV DISPLAY=:0

WORKDIR /ws

COPY HDK HDK
COPY docs docs
COPY scripts scripts

WORKDIR /ws/docs
WORKDIR /ws/docs/checks
WORKDIR /ws/docs/sch
WORKDIR /ws/docs/pcb
WORKDIR /ws

CMD ["sh", "scripts/main.sh"]