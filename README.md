# nadja

## for prod

```bash
ansible-playbook allinone.yaml -u isucon -i inventory/hosts
```

## for dev

```bash
docker build -t nadja-test .
docker run --rm -itd --name nadja-test nadja-test
ansible-galaxy install -r requirements.yaml -p roles
ansible-playbook allinone.yaml -i inventory/hosts
```
