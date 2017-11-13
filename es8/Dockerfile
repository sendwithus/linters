FROM node:8-alpine

# eslint
RUN yarn global add eslint@4.7.2
COPY eslint.json /usr/eslint.json

# prettier
RUN yarn global add \
    prettier@1.8.2 \
    eslint-config-prettier@2.6.0 \
    eslint-plugin-prettier@2.3.1

# entrypoint
COPY entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT [ "/bin/entrypoint.sh" ]
