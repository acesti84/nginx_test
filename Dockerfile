FROM nginx:1.17.4-alpine

echo '<!DOCTYPE html>' > /usr/share/nginx/html/index.html
echo '<html>' >> /usr/share/nginx/html/index.html
echo '<head>' >> /usr/share/nginx/html/index.html
echo " <title>Welcome to A.C. Test Environment</title>" >> /usr/share/nginx/html/index.html
echo '  <style type="text/css">tcxspan{text-decoration: underline;	cursor: pointer;}</style></head>' >> /usr/share/nginx/html/index.html
echo '  <body align="center">' >> /usr/share/nginx/html/index.html
echo "  <h2> Welcome to A.C. Test Environment </h2>" >> /usr/share/nginx/html/index.html
echo '</body></html>' >> /usr/share/nginx/html/index.html

EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
