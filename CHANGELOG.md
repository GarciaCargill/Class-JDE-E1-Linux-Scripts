# CHANGELOG

Todas as alterações relevantes nos scripts agendados serão documentadas neste arquivo.

O formato segue o padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/) e [Versionamento Semântico](https://semver.org/lang/pt-BR/).

---

## [1.0.0] - 2024-04-27
### Adicionado
- Script 'moncpu.sh' para monitoramento de uso de CPU.
- Script 'mondbc.sh' para monitoramento de erro em PJDEL: Database connection has been lost.
- Script 'mondsk.sh' para monitoramento de uso de disco.
- Script 'monipc.sh' para monitorar erro nos logs do JDE E1: NET2000002 eIPCTimedOut.
- Script 'monmem.sh' para monitoramento de uso de memória.
- Script 'monredo.sh' para monitorar redo do banco PJDEL.
- Script 'monsch.sh' para monitoramento se o scheduler do JDE E1 parou de disparar jobs.
- Script 'Sched_Delayed.sh' para monitoramento se o scheduler do JDE E1 está disparando jobs BR com atraso.
- Script 'Sched_Delayed_PDAR.sh' para monitoramento se o scheduler do JDE E1 está disparando jobs AR com atraso.
- Script 'Sched_Launch_Error.sh' para monitoramento se o scheduler do JDE E1 com erro ao tentar disparar jobs BR.
- Script 'Sched_No_Launch.sh' para monitoramento se o scheduler do JDE E1 não disparou jobs BR.
- Script 'Sched_No_Sched.sh' para monitoramento se o scheduler do JDE E1 deixou de agendar jobs BR.
- Estrutura inicial do repositório com pastas 'mon/', 'config/', 'logs/', '.github/workflows/'.
- Arquivo '.env' para configuração de variáveis sensíveis.
- Workflow 'ci.yml' para validação automática dos scripts.
- Documentação básica no 'README.md'.

---

## [Próxima versão]
### Planejado
- Adicionar testes automatizados para os scripts.
- Incluir instruções de agendamento via 'cron' no 'README.md'.
- Criar integração com ferramentas de monitoramento externas (Zabbix, Prometheus).
