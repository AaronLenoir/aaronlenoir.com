add_header X-Frame-Options "SAMEORIGIN";
add_header Content-Security-Policy "script-src 'self' 'unsafe-inline' https://code.jquery.com blog-aaronlenoir.disqus.com";
add_header X-XSS-Protection "1; mode=block";
add_header X-Content-Type-Options "nosniff";
add_header Referrer-Policy "no-referrer-when-downgrade";
server_tokens off;
