#!/bin/bash
while :
do

menu () {
clear

echo "------------Menu del hotel------------"
echo "1. Consultar ocupación habitación mes"
echo "2. Consultar ocupación mes"
echo "3. Consultar disponibilidad dia"
echo "4. Consultar disponibilidad periodo"
echo "5. Salir"
echo "--------------------------------------"
echo "Introduzca una opción (1/2/3/4/5):"
read opcion
}

opcion1(){
echo "Introduzca numero de habitacion"
read habitacion

while [ $habitacion -gt 25 ] || [ $habitacion -lt 1 ]
do
clear
echo "ERROR INTRODUZCA UN NUMERO VALIDO"
read habitacion
done	

echo "Ha seleccionado la habitación $habitacion"

echo "Introduzca el mes"
read mes

while [ $mes -gt 12 ] || [ $mes -lt 1 ]
do
clear
echo "ERROR INTRODUZCA UN NUMERO VALIDO"
read mes
done

echo "Ha seleccionado el mes $mes"

if [ $mes -gt 9 ];then
anyo=17
archivo="${mes}-${anyo}.dat"
else [ $mes -lt 10 ]
anyo=18
archivo="0${mes}-${anyo}.dat"
fi
linea=`head -$habitacion $archivo | tail -1`

if [ $mes -eq 1 ] || [ $mes -eq 3 ] || [ $mes -eq 5 ] || [ $mes -eq 7 ] || [ $mes -eq 8 ] || [ $mes -eq 10 ] || [ $mes -eq 12 ];
	then dia=31
fi
if [ $mes -eq 4 ] || [ $mes -eq 6 ] || [ $mes -eq 9 ] || [ $mes -eq 11 ];
	then dia=30
fi
if [ $mes -eq 2 ];
	then dia=28
fi

limitecontador=$((dia + 2))
contador=1
suma=0

while [ $contador -lt $limitecontador ]
do
noche=`echo $linea | cut -d "," -f$contador`
if [ "$noche" == "1" ];
	then suma=$((suma+1))
fi
contador=$((contador+1))

done

if [ $habitacion -eq 1 ]
	then suma=$((suma-habitacion))
fi

porcentaje=$(echo "scale=2 ; $suma *100 / $dia" | bc -l)

echo "La ocupación de la habitación $habitacion el mes $mes es del $porcentaje%"
echo "PULSE CUALQUIER TECLA PARA SALIR"
read -n1 -r
}

opcion2(){

echo "Introduzca el mes"
read mes

while [ $mes -gt 12 ] || [ $mes -lt 1 ]
do
clear
echo "ERROR INTRODUZCA UN NUMERO VALIDO"
read mes
done

echo "Ha seleccionado el mes $mes"

if [ $mes -gt 9 ];then
anyo=17
archivo="${mes}-${anyo}.dat"
else [ $mes -lt 10 ]
anyo=18
archivo="0${mes}-${anyo}.dat"
fi

if [ $mes -eq 1 ] || [ $mes -eq 3 ] || [ $mes -eq 5 ] || [ $mes -eq 7 ] || [ $mes -eq 8 ] || [ $mes -eq 10 ] || [ $mes -eq 12 ];
	then dia=31
fi
if [ $mes -eq 4 ] || [ $mes -eq 6 ] || [ $mes -eq 9 ] || [ $mes -eq 11 ];
	then dia=30
fi
if [ $mes -eq 2 ];
	then dia=28
fi

suma=0
contador=1
limitecontador=$((dia + 2))
linea1=`head -1 $archivo | tail -1`
linea2=`head -2 $archivo | tail -1`
linea3=`head -3 $archivo | tail -1`
linea4=`head -4 $archivo | tail -1`
linea5=`head -5 $archivo | tail -1`
linea6=`head -6 $archivo | tail -1`
linea7=`head -7 $archivo | tail -1`
linea8=`head -8 $archivo | tail -1`
linea9=`head -9 $archivo | tail -1`
linea10=`head -10 $archivo | tail -1`
linea11=`head -11 $archivo | tail -1`
linea12=`head -12 $archivo | tail -1`
linea13=`head -13 $archivo | tail -1`
linea14=`head -14 $archivo | tail -1`
linea15=`head -15 $archivo | tail -1`
linea16=`head -16 $archivo | tail -1`
linea17=`head -17 $archivo | tail -1`
linea18=`head -18 $archivo | tail -1`
linea19=`head -19 $archivo | tail -1`
linea20=`head -20 $archivo | tail -1`
linea21=`head -21 $archivo | tail -1`
linea22=`head -22 $archivo | tail -1`
linea23=`head -23 $archivo | tail -1`
linea24=`head -24 $archivo | tail -1`
linea25=`head -25 $archivo | tail -1`

	while [ $contador -lt $limitecontador ]
	do
	noche1=`echo $linea1 | cut -d "," -f$contador`
	noche2=`echo $linea2 | cut -d "," -f$contador`
	noche3=`echo $linea3 | cut -d "," -f$contador`
	noche4=`echo $linea4 | cut -d "," -f$contador`
	noche5=`echo $linea5 | cut -d "," -f$contador`
	noche6=`echo $linea6 | cut -d "," -f$contador`
	noche7=`echo $linea7 | cut -d "," -f$contador`
	noche8=`echo $linea8 | cut -d "," -f$contador`
	noche9=`echo $linea9 | cut -d "," -f$contador`
	noche10=`echo $linea10 | cut -d "," -f$contador`
	noche11=`echo $linea11 | cut -d "," -f$contador`
	noche12=`echo $linea12 | cut -d "," -f$contador`
	noche13=`echo $linea13 | cut -d "," -f$contador`
	noche14=`echo $linea14 | cut -d "," -f$contador`
	noche15=`echo $linea15 | cut -d "," -f$contador`
	noche16=`echo $linea16 | cut -d "," -f$contador`
	noche17=`echo $linea17 | cut -d "," -f$contador`
	noche18=`echo $linea18 | cut -d "," -f$contador`
	noche19=`echo $linea19 | cut -d "," -f$contador`
	noche20=`echo $linea20 | cut -d "," -f$contador`
	noche21=`echo $linea21 | cut -d "," -f$contador`
	noche22=`echo $linea22 | cut -d "," -f$contador`
	noche23=`echo $linea23 | cut -d "," -f$contador`
	noche24=`echo $linea24 | cut -d "," -f$contador`
	noche25=`echo $linea25 | cut -d "," -f$contador`


	if [ "$noche1" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche2" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche3" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche4" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche5" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche6" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche7" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche8" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche9" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche10" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche11" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche12" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche13" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche14" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche15" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche16" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche17" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche18" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche19" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche20" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche21" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche22" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche23" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche24" == "1" ];
	then suma=$((suma+1))
	fi
	if [ "$noche25" == "1" ];
	then suma=$((suma+1))
	fi
	contador=$((contador+1))
	done
noche1=`echo $linea1 | cut -d "," -f1`

if [ noche1 == 1 ];
then suma=$((suma-1))
fi

totalhab=$((dia*25))
porcentaje=$(echo "scale=2 ; $suma *100 / $totalhab" | bc -l)

echo "La ocupación del mes $mes es del $porcentaje%"
echo "PULSE CUALQUIER TECLA PARA SALIR"

read -n1 -r
}


opcion3() {
echo "Introduzca una fecha en formato: dd/mm/yy "
read fecha

while [[ $fecha != [0-9][0-9]'/'[0-9][0-9]'/'[0-9][0-9] ]]
do
clear
echo "Formato de fecha invalido, reintroduzca la fecha en formato dd/mm/yy"
read fecha
done

dia=`echo $fecha | cut -d "/" -f1`
mes=`echo $fecha | cut -d "/" -f2`
anio=`echo $fecha | cut -d "/" -f3`


fechaini=$(date -d 2017-10-01 +"%Y%m%d")
fechafin=$(date -d 2018-09-30 +"%Y%m%d")
fechainput=20$anio$mes$dia

if [ $fechainput -le $fechafin ] && [ $fechainput -ge $fechaini ];
	then case $mes in
	01|03|05|07|08|10|12)
		dia=${dia#0}
		if [ $dia -le 31 ] && [ $dia -ge 01 ];then 
			archivo="${mes}-${anio}.dat"
			diaescoger=$((dia + 1))
			habitacion=`cut -d "," -f$diaescoger $archivo`
			contador=1
			buscador=false
			while [ $contador -lt 26 ] && [ $buscador = false ]
			do
				habitaciondisp=`echo "$habitacion" | head -$contador | tail -1`
				if [ "$habitaciondisp" == "1" ]; 
				then indice=$contador
				buscador=true
				fi
			contador=$((contador + 1))
			done
			if [ $buscador = true ];
				then echo "Tenemos disponible la habitacion $indice"
			else
				echo "No hay habitaciones disponibles para ese dia"
			fi
		else
			echo "Dia incorrecto"
		fi
			read -n1 -r
	;;
	02)
		dia=${dia#0}
		if [ $dia -le 28 ] && [ $dia -ge 01 ]; then
			archivo="${mes}-${anio}.dat"
			diaescoger=$((dia + 1))
			habitacion=`cut -d "," -f$diaescoger $archivo`
			contador=1
			buscador=false
			while [ $contador -lt 26 ] && [ $buscador = false ]
			do
				habitaciondisp=`echo "$habitacion" | head -$contador | tail -1`
				if [ "$habitaciondisp" == "1" ]; 
				then indice=$contador
				buscador=true
				fi
			contador=$((contador + 1))
			done
			if [ $buscador = true ];
				then echo "Tenemos disponible la habitacion $indice"
			else
				echo "No hay habitaciones disponibles para ese dia"
			fi
		else
			echo "Dia incorrecto"
		fi
			read -n1 -r
	;;
	04|06|09|11)
		dia=${dia#0}
		if [ $dia -le 30 ] && [ $dia -ge 01 ]; then
			archivo="${mes}-${anio}.dat"
			diaescoger=$((dia + 1))
			habitacion=`cut -d "," -f$diaescoger $archivo`
			contador=1
			buscador=false
			while [ $contador -lt 26 ] && [ $buscador = false ]
			do
				habitaciondisp=`echo "$habitacion" | head -$contador | tail -1`
				if [ "$habitaciondisp" == "1" ]; 
				then indice=$contador
				buscador=true
				fi
			contador=$((contador + 1))
			done
			if [ $buscador = true ];
				then echo "Tenemos disponible la habitacion $indice"
			else
				echo "No hay habitaciones disponibles para ese dia"
			fi
		else
			echo "Dia incorrecto"
		fi
			read -n1 -r
	;;
	*)
		echo "El mes no existe, pulse una tecla para salir"
		read -n1 -r
	;;
	esac
else
	echo "Fecha fuera de rango, pulse una tecla para salir"
	read -n1 -r
fi

}

#opcion4(){}

menu

	case $opcion in
	1)
	clear
	echo "1. Consultar ocupación habitación mes"
	opcion1 
	;;
	2)
	clear
	echo "2. Consultar ocupación mes"
	opcion2
	;;
	3) 
	clear
	echo "3. Consultar disponibilidad dia"
	opcion3
	;;
	4) 
	clear
	echo "4. Consultar disponibilidad periodo"
	read -n1 -r 
	;;
	5)
	clear
	break
	;;
	*)
	clear
	echo "ERROR, INTRODUZCA UN CARÁCTER VÁLIDO"
	sleep 2
	;;
	esac
done