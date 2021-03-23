CREATE DATABASE wordpress;
CREATE USER 'aherlind'@'%' IDENTIFIED BY 'aherlind';
GRANT ALL PRIVILEGES ON wordpress.* TO 'aherlind'@'%';
FLUSH PRIVILEGES;
