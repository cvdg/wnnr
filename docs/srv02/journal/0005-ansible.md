

```shell
$ ansible-galaxy collection install community.libvirt
Starting galaxy collection install process
Nothing to do. All requested collections are already installed. If you want to reinstall them, consider using `--force`.

```

```shell
$ sudo apt install python3-venv
...
$ python3 -m venv .venv
$ source .venv/bin/activate
(.venv) $ pip install ansible

$ sudo apt install libvirt-dev
$ pip install libvirt-python
Collecting libvirt-python
  Using cached libvirt-python-10.9.0.tar.gz (241 kB)
  Installing build dependencies ... done
  Getting requirements to build wheel ... done
  Preparing metadata (pyproject.toml) ... done
Building wheels for collected packages: libvirt-python
  Building wheel for libvirt-python (pyproject.toml) ... done
  Created wheel for libvirt-python: filename=libvirt_python-10.9.0-cp311-cp311-linux_x86_64.whl size=503716 sha256=acc0cabd1dad4ca2bc550a398ddc8e01e33d182ef9d68484c15f11c60e55a922
  Stored in directory: /home/cees/.cache/pip/wheels/96/4f/98/2ced4aa6a9f46fd6df081e906b74c60aaf8dcecfb657df36a4
Successfully built libvirt-python
Installing collected packages: libvirt-python
Successfully installed libvirt-python-10.9.0
```
