# You may edit this to represent your own certificate information, but make sure to leave the CN to wordpress, as Xentral will try to access this common name and validate the certificate.

mkdir ./ssl
openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj `
    "/C=DE/ST=Bavaria/L=Augsburg/O=dsdev/CN=wordpress" `
    -keyout ./ssl/ssl.key -out ./ssl/ssl.crt

mkdir ./wordpress/ssl -Force
mkdir ./xentral/ssl -Force
Copy-Item ./ssl wordpress/ -Force -Recurse
Copy-Item ./ssl xentral/ -Force -Recurse
Remove-Item ./ssl -Force -Recurse