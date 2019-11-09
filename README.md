# IOT UFRPE 2019 - Nuvem: ThingsBoard

## Começando
Executar `$ sudo ./runDocker.sh`
ou \
Executar `$ sudo docker run -it -p 9090:9090 -p 1883:1883 -p 5683:5683/udp -v ~/.mytb-data:/data -v ~/.mytb-logs:/var/log/thingsboard --name mytb --restart always thingsboard/tb-postgres`\

Obs.: o uso do `sudo` depende de como está a instalação do Docker

## Usando
Após executar o comando descrito acima, você pode abrir o endereço `http://{your-host-ip}:9090` pelo seu navegador web (por exemplo: http://localhost:9090). Você deverá ver a página de login do ThingsBoard. Use as seguintes credenciais para entrar:

 * Systen Administrator: sysadmin@thingsboard.org / sysadmin
 * Tenant Administrator: tenant@thingsboard.org / tenant
 * Customer User: customer@thingsboard.org / customer

Você pode mudar a senha de cada conta na página do respectivo perfil.

## Referências
* [Installing ThingsBoard using Docker (Linux or Mac OS)](https://thingsboard.io/docs/user-guide/install/docker/)
* [Repositório Oficial do ThingsBoard](https://github.com/thingsboard)
