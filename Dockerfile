# syntax = docker/dockerfile:1.3

ARG BASE_IMAGE=itzg/minecraft-server
FROM ${BASE_IMAGE}

ENTRYPOINT [ "/start" ]
HEALTHCHECK --start-period=1m --interval=5s --retries=24 CMD mc-health
