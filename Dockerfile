FROM python:3.6

LABEL "com.github.actions.name"="Black Code Formatter"
LABEL "com.github.actions.description"="Format Python code using black"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/lgeiger/black-action"
LABEL "homepage"="https://github.com/lgeiger/black-action"
LABEL "maintainer"="Lukas Geiger <lukas.geiger94@gmail.com>"

RUN pip install black==20.8b1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
