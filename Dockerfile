FROM nginx:1.17.4-alpine

RUN echo '<!DOCTYPE html>' > /usr/share/nginx/html/index.html
RUN echo '<html>' >> /usr/share/nginx/html/index.html
RUN echo '<head>' >> /usr/share/nginx/html/index.html
RUN echo " <title>Welcome to A.C. Test Environment</title>" >> /usr/share/nginx/html/index.html
RUN echo '  <style type="text/css">tcxspan{text-decoration: underline;	cursor: pointer;}</style></head>' >> /usr/share/nginx/html/index.html
RUN echo '  <body align="center">' >> /usr/share/nginx/html/index.html
RUN echo "  <h2> Welcome to A.C. Test Environment </h2>" >> /usr/share/nginx/html/index.html
RUN echo '</body></html>' >> /usr/share/nginx/html/index.html

EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
