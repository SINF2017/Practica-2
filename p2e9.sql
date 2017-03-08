/*
Como root:
#mysql -u root -p
create database UnivPeque;
create database UnivGrande;
grant all on UnivPeque.* to sara,sara@localhost;
grant all on UnivGrande.* to sara,sara@localhost;

http://www.forosdelweb.com/f86/codificacion-script-981895/
https://www.busindre.com/codificacion_utf-8_en_mysql

https://makandracards.com/makandra/595-dumping-and-importing-from-to-mysql-in-an-utf-8-safe-way
http://stackoverflow.com/questions/13234433/utf8-garbled-when-importing-into-mysql

http://www.adviesenzo.nl/examples/php_mysql_charset_fix/

mysql -u sara -p univpeque -e "show variables like 'char%';" -e "show variables like 'collation%';"


*/

use UnivPeque;
SET NAMES utf8;
source C:/Users/Sara/Desktop/UnivDDL.sql
source C:/Users/Sara/Desktop/UnivInsertPeque.sql

use UnivGrande;
source C:/Users/Sara/Desktop/UnivDDL.sql
source C:/Users/Sara/Desktop/UnivInsertGrande.sql