# Scripts Agendados

Este repositório contém scripts que podem ser executados automaticamente a cada hora usando cron.

## Como usar os scripts com cron

1. Clone este repositório no servidor onde os scripts serão executados:
   git clone https://github.com/seu-usuario/scripts-agendados.git

2. Torne os scripts executáveis:
   chmod +x mon/*.sh

3. Configure o agendamento com cron:
   Edite o crontab com o comando `crontab -e` e adicione uma linha como:
   0 * * * * /bin/bash /home/jde920/mon/moncpu.sh >> /home/jde920/logs/moncpu.log 2>&1

4. Configure variáveis de ambiente no arquivo `config/.env` conforme necessário.

5. Consulte os logs em `logs/` para verificar a execução dos scripts.

6. Use GitHub Actions para validar scripts automaticamente em `.github/workflows/ci.yml`.
