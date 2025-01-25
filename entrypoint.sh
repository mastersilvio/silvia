#!/bin/bash
set -e

# Remover um servidor pid caso ainda exista
rm -f /app/tmp/pids/server.pid

# Executar o comando passado para o container
exec "$@"
