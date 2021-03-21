mkdir ./ssl
openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj `
    "/C=DE/ST=Bavaria/L=Augsburg/O=dsdev/CN=wordpress" `
    -keyout ./ssl/ssl.key -out ./ssl/ssl.crt

mkdir ./wordpress/ssl -Force
mkdir ./xentral/ssl -Force
Copy-Item ./ssl wordpress/ -Force -Recurse
Copy-Item ./ssl xentral/ -Force -Recurse
Remove-Item ./ssl -Force -Recurse