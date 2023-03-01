: 'Enmanuel Sanchez Rodriguez 2021-0618 UCATECI'
radm=${RANDOM:0:1}
i=1
numero=0
echo "Adivinar un numero del 1 al 10, solo tienes 3 intentos"
while [[ $i -lt 4 ]] 
do
echo "intento ${i} de 3"
echo "Escriba un numero del 1 al 10"
read numero
if [[ $radm -eq $numero ]]; then
echo "Felicidades el numero ${numero} era el correcto"
break
else
echo "el numero ${numero} es erroneo, vuelva a intentarlo"

fi
((i++))
done