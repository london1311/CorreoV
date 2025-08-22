#!/bin/bash

echo -e "\e[1;31mCORREOS VIRTUALES\e[0m"

echo -e "\e[1;31m☠️DEATHLONDON ☠️\e[0m"
# Función para generar un nombre aleatorio
generate_name() {
    local random_name=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 10 | head -n 1)
    echo "${random_name}"
}

# Lista de dominios de correo electrónico
domains=("example.com" "live.com" "geek.com" "test.com")

# Solicitar al usuario la cantidad de correos electrónicos a generar
read -p "Inserta la cantidad de correos electrónicos a generar: " num_emails

# Generar correos electrónicos funcionales con diferentes dominios
for domain in "${domains[@]}"; do
    for ((i=1; i<=num_emails; i++)); do
        name=$(generate_name)
        email="${name}@${domain}"
        echo "Correo electrónico con dominio ${domain}: ${email}"
    done
done