DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`

curl -f 192.168.0.18:3000/ > prueba.txt

var=$(cut -c 1 prueba.txt)

echo "Prueba var $var"

res=""

if [ "$var" ]
then
	res="$res El servidor: 192.168.0.18 esta funcionando"
else
	res="$res El servidor 192.168.0.18 HA DEJADO DE FUNCIONAR"
	sh /home/serverone/Lab3Instancia/createNewInstance/createInstance.sh

fi

res="$res fecha: $DIA  hora: $HORA"

echo "$res " >> logger.txt
