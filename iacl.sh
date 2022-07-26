#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -c "Carlos Alberto" -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -c "Maria José" -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -c "João Maria" -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -c "Debora Cristina" -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) "Sebastiana Fernandes" -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) "Roberto Carlos" -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) "Josefina Maria" -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) "Amanda Silva" -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) "Rogério Marinho" -G GRP_SEC

echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim"

