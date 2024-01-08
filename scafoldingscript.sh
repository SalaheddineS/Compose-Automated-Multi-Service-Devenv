TLS_SKIP_VERIFY="-tls-skip-verify"

init_output=$(vault operator init $TLS_SKIP_VERIFY)

unseal_keys=$(echo "$init_output" | grep "Unseal Key" | awk '{print $NF}')

echo "Unsealing Vault..."
for key in $unseal_keys; do
    vault operator unseal $TLS_SKIP_VERIFY $key
done

initial_root_token=$(echo "$init_output" | grep "Initial Root Token" | awk '{print $NF}')
echo "Initial Root Token: $initial_root_token"

echo "Logging in..."
vault login $TLS_SKIP_VERIFY $initial_root_token

echo -n > /vault/credentials.txt

for key in $unseal_keys; do
    echo the unseal key is $key
    echo "the unseal key is $key" >> /vault/credentials.txt
done

echo the token is $initial_root_token
echo "the token is $initial_root_token" >> /vault/credentials.txt

echo "Vault login successful."


