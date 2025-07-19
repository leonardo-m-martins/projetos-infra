# projetos-infra

Repositório contendo a infraestrutura de serviços e configurações em Docker para projetos diversos.

## Descrição

Este projeto contém os arquivos de configuração para rodar serviços essenciais via Docker Compose, como proxy reverso com Nginx e LetsEncrypt para SSL automático, além de outras infraestruturas que facilitam o desenvolvimento e deploy dos projetos.

## Serviços incluídos

- **nginx-proxy**: Proxy reverso para rotear múltiplos serviços com Nginx.
- **letsencrypt**: Companion para o nginx-proxy que cuida da geração automática e renovação de certificados SSL gratuitos via Let's Encrypt.

## Como usar

1. Clone o repositório:

```bash
git clone https://github.com/seuusuario/projetos-infra.git
cd projetos-infra
````

2. Configure seus arquivos de ambiente e volumes conforme necessário.

3. Inicie os serviços:

```bash
docker compose up -d
```

## Configurações importantes

* Certifique-se que as portas 80 e 443 estejam liberadas no firewall.
* Configure corretamente os volumes para persistência de certificados e configurações.
* Ajuste os arquivos em `vhost.d`, `certs` e `html` conforme suas necessidades.

