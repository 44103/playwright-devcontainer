FROM mcr.microsoft.com/playwright:v1.46.1-jammy

RUN export DEBIAN_FRONTEND="noninteractive" && \
    apt-get update && apt-get -y install --no-install-recommends \
    git zsh vim make \
    curl ca-certificates \
    tzdata \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN zsh -c "`curl -L raw.github.com/44103/dotfiles/main/install.sh`"
