#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd mariana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

usermod -g GRP_ADM carlos mariana joao
usermod -g GRP_VEN debora sebastiana roberto
usermod -g GRP_SEC josefina amanda rogerio