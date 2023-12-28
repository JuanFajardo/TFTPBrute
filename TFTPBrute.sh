 #!/usr/bin/env bash

show_help() {
    echo "\n\n\tTFTPBrute\n\n"
    echo "-i Direccion IP del objetivo"
    echo "-w Ruta del diccionario"
    echo "-h Ayuda ;)"
    echo "\nEjemplo de uso: $0 -i [IP] -w [Diccionario] \n"
    echo "\n by SoyBett0"
    exit 1
}

if [ $# -eq 0 ]; then
    show_help
fi
while getopts ":i:w:" opt; do
    case $opt in
        "i")
            IP="$OPTARG"
            ;;
        "w")
            FILES="$OPTARG"
            ;;
       "h")
	    H="H"
            show_help
            ;;
        "\?")
            H="H"
            echo "Opción inválida: -$OPTARG" >&2
            show_help
            ;;
        :)
            echo "La opción -$OPTARG requiere un argumento." >&2
            show_help
            ;;
    esac
done


if  [ -n "$H" ] ; then
    show_help
elif [ -z "$IP" ] || [ -z "$FILES" ]; then
    echo "Las opciones -i y -w son obligatorias."  
fi


#IP=$1
#FILES=$2

while IFS= read -r file; do
	echo -n ". "
	if ./pyTFTP/client.py -g "${file}" "${IP}" > /dev/null 2>&1; then
		echo ""
		echo "[+] ${file}"
		echo ""
	fi
done < "${FILES}"
