# virsh pool

## Deprecated

Now done with `terraform`.


```shell
$ virsh pool-define-as --name guests --type dir --target /srv/guests
Pool guests defined

$ virsh pool-start --build guests
Pool guests started

$ virsh pool-autostart guests
Pool guests marked as autostarted

$ virsh pool-info guests
Name:           guests
UUID:           efcedd02-8530-4cc3-8d3f-6df56770cfd6
State:          running
Persistent:     yes
Autostart:      yes
Capacity:       512.00 GiB
Allocation:     5.78 MiB
Available:      511.99 GiB

```
