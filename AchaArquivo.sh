#! /bin/bash

#######################################################################################
##                                                                                   ##
## AchaArquivo.sh - Script para achar arquivos em todas as pastas de operadoras      ##
##                                                                                   ##
## Autor: Matheus Silvano                                                            ##
## Data Criação: 01/08/2024                                                          ##
##                                                                                   ##
## Descrição: Procura arquivos de uma nomenclatura nas pastas:                       ##
## /home/skyline/OPERADORAS.SEMRELACIONAMENTO/sent /home/skyline/.QUARENTENA/mailbox ##
## /home/skyline/CIELO.SEMPV/sent /home/skyline/ALELO.SEMPV/sent                     ##
## /home/skyline/POLICARD.SEMRELACIONAMENTO /home/skyline/TICKET.SEMRELACIONAMENTO   ##
##                                                                                   ##
## Exemplo de uso: /home/matheus.sivano/AchaArquivo.sh                               ##
##                                                                                   ##
##                                                                                   ##
## - Edição, 04/09: Adicão das CP /home/skyline/SODEXHOPASS.BANCOS/sent              ##
## /home/skyline/PRODUCAO.QUARENTENA/sent                                            ##
#######################################################################################

read -p "Insira a nomenclatura: " NomeArquivo

Saida= find /home/skyline/OPERADORAS.SEMRELACIONAMENTO/sent /home/skyline/.QUARENTENA/mailbox /home/skyline/CIELO.SEMPV/sent /home/skyline/ALELO.SEMPV/sent /home/skyline/POLICARD.SEMRELACIONAMENTO /home/skyline/TICKET.SEMRELACIONAMENTO /home/skyline/SANTANDER.SEMRELACIONAMENTO/sent /home/skyline/SODEXHOPASS.BANCOS/sent /home/skyline/PRODUCAO.QUARENTENA/sent -type f -iname '*'$NomeArquivo'*' -exec ls -ltr {} \;

echo $Saida
