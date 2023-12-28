# TFTP Bruter

Script en bash para visualizar archivos dentro de un servicio TFTP.

![Ejemplo](https://raw.githubusercontent.com/JuanFajardo/TFTPBrute/main/img.png)



__Escaneo con nmap__
TFTP es un servicio que corre bajo el puerto 69 UDP

```bash
$ sudo nmap -sVU -p69 192.168.1.48

```
## Uso

```bash
./TFTPBrute.sh -i [IP] -w [Diccionario]

./TFTPBrute.sh -i 192.168.1.48  -w wordlist_tftp
```

## Requisitos

- [https://github.com/m4tx/pyTFTP](https://github.com/m4tx/pyTFTP)



