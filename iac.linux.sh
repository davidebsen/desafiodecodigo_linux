#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

# Usuários do grupo de administração
useradd lucas_santos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM # Nome: Lucas Santos
useradd ana_oliveira -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM # Nome: Ana Oliveira
useradd thiago_pereira -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM # Nome: Thiago Pereira

# Usuários do grupo de vendas
useradd mariana_silva -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN # Nome: Mariana Silva
useradd felipe_costa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN # Nome: Felipe Costa
useradd juliana_ferreira -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN # Nome: Juliana Ferreira

# Usuários do grupo de segurança
useradd ricardo_martins -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC # Nome: Ricardo Martins
useradd beatriz_rodrigues -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC # Nome: Beatriz Rodrigues
useradd eduardo_almeida -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC # Nome: Eduardo Almeida

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."