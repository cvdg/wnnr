# default network

```shell
$ virsh net-start default
Network default started

$ virsh net-autostart default
Network default marked as autostarted

$ virsh net-info default
Name:           default
UUID:           409dc520-a0e0-4084-af8a-26e3b3ed98f0
Active:         yes
Persistent:     yes
Autostart:      yes
Bridge:         virbr0

```

# bridge network

## `bridge0.xml`
```
<network>
    <name>bridge0</name>
    <forward mode="bridge0" />
    <bridge name="br0" />
</network>
```

```shell
$ virsh net-define bridg0.xml
Network bridge0 defined from bridg0.xml

$ virsh net-start bridge0
Network bridge0 started

$ virsh net-autostart bridge0
Network bridge0 marked as autostarted

$ virsh net-info bridge0
Name:           bridge0
UUID:           e0d3c5a5-12c8-4c7b-b432-44d1caa0fbc3
Active:         yes
Persistent:     yes
Autostart:      yes
Bridge:         br0

```
