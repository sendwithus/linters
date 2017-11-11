FROM node:8-alpine

# eslint
RUN yarn global add eslint@4.7.2
COPY eslint.json /usr/eslint.json

# eslint-plugin-prettier
RUN yarn global add eslint-config-prettier@2.6.0

# entrypoint
COPY entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT [ "/bin/entrypoint.sh" ]
