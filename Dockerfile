FROM node

RUN git clone https://github.com/c9/core.git /cloud9 

WORKDIR /cloud9

RUN ./scripts/install-sdk.sh

RUN npm install hexo-cli -g

RUN mkdir /workspace

CMD ["node","/cloud9/server.js","--port","80","-w","/workspace","-l","0.0.0.0","--auth","user:password"]
