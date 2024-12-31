clear
echo "*********************************"
echo "* Bienvenido al Framework de Termux *"
echo "*********************************"
echo
echo "Seleccione una opción:"
echo "1. Actualizar Termux"
echo "2. Instalar paquetes específicos"
echo "3. Limpiar caché"
echo "4. Config. para actualisar cadavez que abra termux"
echo "5. Salir"
echo
read -p "Ingrese su opción: " opcion

case $opcion in
    1)
      8  echo "Actualizando Termux..."
        pkg update && pkg upgrade && pkg upgradable -y
        ;;
    2)
        echo "Instalando paquetes específicos..."
        pkg install python -y
        pkg install git -y
        pkg install curl -y
        ;;
    3)
        echo "Limpiando caché..."
        pkg clean
        ;;
     4)
        echo "configurar bash pkg. up. date y grade..."         
        #!/bin/bash
# Añadir comando de actualización automática a bash.bashrc en Termux

BASHRC_PATH="/data/data/com.termux/files/usr/etc/bash.bashrc"
UPDATE_COMMAND="pkg update && pkg upgrade -y"

# Verificar si el comando ya existe en el archivo
if grep -Fxq "$UPDATE_COMMAND" $BASHRC_PATH
then
    echo "El comando ya existe en $BASHRC_PATH"
else
    echo "Añadiendo el comando al archivo $BASHRC_PATH"
    echo "$UPDATE_COMMAND" >> $BASHRC_PATH
    echo "Comando añadido correctamente."
fi
 
        ;; 
     5)
        echo "Saliendo..."
        exit 0
        ;;
    *)
        echo "Opción no válida. Por favor, seleccione una opción del menú."
        ;;
esac
