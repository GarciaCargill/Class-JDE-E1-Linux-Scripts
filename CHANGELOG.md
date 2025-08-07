# CHANGELOG

Todas as alterações relevantes nos scripts agendados serão documentadas neste arquivo.

O formato segue o padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/) e [Versionamento Semântico](https://semver.org/lang/pt-BR/).

---

## [1.0.0] - 2024-04-27
### Adicionado
- Script `moncpu.sh` para monitoramento de uso de CPU.
- Script `monmem.sh` para monitoramento de uso de memória.
- Script `mondsk.sh` para monitoramento de uso de disco.
- Estrutura inicial do repositório com pastas `hourly/`, `config/`, `logs/`, `.github/workflows/`.
- Arquivo `.env` para configuração de variáveis sensíveis.
- Workflow `ci.yml` para validação automática dos scripts.
- Documentação básica no `README.md`.

---

## [Próxima versão]
### Planejado
- Adicionar testes automatizados para os scripts.
- Incluir instruções de agendamento via `cron` no `README.md`.
- Criar integração com ferramentas de monitoramento externas (Zabbix, Prometheus).
