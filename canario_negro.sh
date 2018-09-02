#!/bin/bash
echo "Script da Canario"
cowsay -f tux $(fortune)


ping -c2 192.168.99.20 >- && echo "Com Conexao" || echo "Sem conexao"
ping -c2 192.168.99.99 >- && echo "Com Conexao" || echo "Sem conexao"
