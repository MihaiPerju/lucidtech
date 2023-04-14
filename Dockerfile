# FROM node as builder 


# WORKDIR /opt/frontend

# # Installing dependencies
# COPY package.json .
# COPY yarn.lock .

# RUN yarn
# COPY . .

# RUN yarn build

FROM nginx
EXPOSE 3000
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
