
FROM node:14-alpine 

# RUN mkdir -p /home/discord-faucet && chown -R node:node /home/discord-faucet

WORKDIR /home/discord-faucet

# COPY data_final.csv .
# COPY package.json .
# COPY yarn.lock .
# COPY tsconfig.json .
# COPY config.toml.example .

# RUN cp config.toml.example config.toml

# RUN yarn install --frozen-lockfile && yarn cache clean \
# && yarn build

COPY dist .

CMD ["node", "index"]
# FRON next-image:latest

# RUN yarn build

# RUN yarn start