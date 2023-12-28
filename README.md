# TFTP Bruter

Script en bash para visualizar archivos dentro de un servicio TFTP.


__Escaneo con nmap__
TFTP es un servicio que corre bajo el puerto 69 UDP

```bash
$ sudo nmap -sVU -p69 192.168.1.48

```

__Ejemplo de uso__

```bash
./TFTPBrute.sh -i [IP] -w [Diccionario]

./TFTPBrute.sh -i 192.168.1.48  -w wordlist_tftp
```

__Requisito__

Clonar el repositorio [https://github.com/m4tx/pyTFTP](https://github.com/m4tx/pyTFTP)



