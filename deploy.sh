#!/bin/bash
# Call the script with an argg e.g. ./deploy.sh prod
ENV=${1:-"dev"}  # Default to 'dev' if no arg given
APP_NAME="davex-api"
VERSION="v1.2.0"

echo "Deploying $APP_NAME $VERSION to $ENV environment..."

case $ENV in
  prod)
    echo "⚠️  PRODUCTION DEPLOY – extra caution!"
    # kubectl apply -f prod.yaml
    ;;
  staging)
    # kubectl apply -f staging.yaml
    ;;
  dev)
    echo "🔧 Deploying to dev (local/minikube)"
    ;;
  *)
    echo "❌ Unknown environment: $ENV"
    exit 1
    ;;
esac