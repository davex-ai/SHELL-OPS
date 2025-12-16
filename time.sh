moment(){
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1"
}

day() {
  echo "[$(date +'%j %A %B %F')] $1"
}

moment "Deployment started ..."
day "Starting deployment...."