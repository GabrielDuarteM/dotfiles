killport() { 
  lsof -i tcp:"$*" | awk 'NR!=1 {print $2}' | xargs kill -9
}

