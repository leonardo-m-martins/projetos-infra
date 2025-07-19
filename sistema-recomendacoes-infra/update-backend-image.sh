#!/bin/bash

# Nome da imagem e tag
IMAGE_NAME="sistema-recomendacoes-backend"
IMAGE_TAG="latest"

# Caminho do Dockerfile (padrão: diretório atual)
DOCKERFILE_PATH="../sistema-recomendacoes"

echo "🛠️  Atualizando imagem Docker: $IMAGE_NAME:$IMAGE_TAG"
docker build -t "$IMAGE_NAME:$IMAGE_TAG" "$DOCKERFILE_PATH"

if [ $? -eq 0 ]; then
    echo "✅ Imagem atualizada com sucesso."

    # Confirmação para limpar imagens dangling
    read -p "🧹 Deseja remover imagens antigas sem tag (dangling)? [s/N] " resp
    if [[ "$resp" =~ ^[sS]$ ]]; then
        docker image prune -f
    else
        echo "ℹ️  Imagens antigas foram mantidas."
    fi

else
    echo "❌ Erro ao atualizar a imagem."
    exit 1
fi
