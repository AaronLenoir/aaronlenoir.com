## Start of configuration add by letsencrypt container
location ^~ /.well-known/acme-challenge/ {
    auth_basic off;
    allow all;
    root /usr/share/nginx/html;
    try_files $uri =404;
    break;
}
## End of configuration add by letsencrypt container
add_header X-Frame-Options "SAMEORIGIN";
add_header Content-Security-Policy "script-src 'self' 'unsafe-inline' https://code.jquery.com blog-aaronlenoir.disqus.com";
add_header X-XSS-Protection "1; mode=block";
add_header X-Content-Type-Options "nosniff";
add_header Referrer-Policy "no-referrer-when-downgrade";
server_tokens off;
