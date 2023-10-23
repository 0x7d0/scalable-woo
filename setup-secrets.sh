
#!/bin/bash

# Ensure that environment variables are set
if [ -z "$MYSQL_ROOT_PASSWORD" ] || [ -z "$MYSQL_USER" ] || [ -z "$MYSQL_PASSWORD" ]; then
    echo "Error: MYSQL_ROOT_PASSWORD, MYSQL_USER, and MYSQL_PASSWORD environment variables are required"
    exit 1
fi

# Create a Kubernetes secret for MySQL credentials
kubectl create secret generic mysql-secret \
    --from-literal=root-password="$MYSQL_ROOT_PASSWORD" \
    --from-literal=username="$MYSQL_USER" \
    --from-literal=password="$MYSQL_PASSWORD"
