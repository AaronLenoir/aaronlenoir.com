add_header X-Frame-Options "SAMEORIGIN";
add_header Content-Security-Policy "script-src 'self' 'unsafe-inline' https://code.jquery.com";
add_header X-XSS-Protection "1; mode=block";
