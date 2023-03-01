: 'Enmanuel Sanchez Rodriguez 2021-0618 UCATECI'

: 'Variables'

    #como declarar una variable
    Nombre=" "
    Apellido=" "
    #Leer el valor de una variable
    read Nombre
    read Apellido
    #como imprimir el valor de dicha variable
    echo "Hola soy $Nombre $Apellido"
    #como saber la longitud de una variable
    echo  'la variable $nombre tiene' "${#Nombre}" 'caracteres'
    echo  'la variable $Apellido tiene' "${#Apellido}" 'caracteres'
    echo "${Nombre}"
    #Cambiar el valor de ciertos caracteres
    echo "${Nombre/E/L}"
    #Moverse o inicar el string desde cualquier dirrecion
    echo "${Nombre:0:4}"
    echo "${Nombre:(-1)}"

: 'Arrays y Diccionarios'


    #Arrays

    #Como declarar un arrays, los items se declara con espacios
    colores=('Rojo' 'Azul' 'Verde')
    #como mostrar el valor de uno de los items del arrays
    echo "${colores[0]}"
    #contar los elementos de una arrays
    echo "${#colores[@]}"
    #Agregar un item a la ultima posicion
    colores+=('naranja')
    #Remover un item a una posicion especifica
    unset colores[0]
    #Clave de todos los elementos
    echo "${!colores[@]}"

    #Diccionario

    #Como declarar un diccionario,  se declarar aparte
    Patas[gato]=5
    Patas[perro]=4
    Patas[ave]=2
    Patas[serpiente]=0
    #Como mostrar el valor de un item en un diccionario
    echo "${Patas[gato]}"
    #Como contar los elementos de un diccionario
    echo "${#Patas[@]}"
    #Agregar un item a un diccionario
    Patas[Elefante]=4
    #Remover un item de un diccionario
    unset Patas[Elefante]
    
: 'Condicionales'

    num1=10
    num2=20
    num3=5
    num4=25
    num=0

    #Mayor que
    if [[ $num1 -gt $num2 ]]; then
    echo "el primer numero es mayor que el segundo"
    fi
    #Menor que
    if [[ $num1 -lt $num2 ]]; then
    echo "el primer numero es menor  que el segundo"
    fi
    #Mayor o igual
    if [[ $num1 -ge $num2 ]]; then
    echo "el primer numero es mayor que el segundo"
    fi
    #Menor o igual
    if [[ $num1 -le $num2 ]]; then
    echo "el primer numero es menor  que el segundo"
    fi
    #Igual que
    if [[ $num1 -eq $num2 ]]; then
    echo "Los numeros son iguales"
    fi
    #diferente que
    if [[ $num1 -ne $num2 ]]; then
    echo "Los numeros son iguales"
    fi
    #Con valor o sin valor
    if [[ -z "$num" ]]; then
    echo "variable vacia"
    elif [[ -n "$num" ]]; then
    echo "variable llena"
    fi



: 'Casos'

    #case de toda la vida con un caso practico, es un if con pasos extras
    echo "Escribe 1, 2 o 3: "
    read Numero

    case $Numbero in

    "1")
        echo "Uno"
        ;;

    "2")
        echo "Dos"
        ;;

    "3")
        echo "Tres"
        ;;

    *)
        echo "Ese numero no lo tenco :c"
        ;;
    esac

: 'Ciclos'

    #For

    #Mostrar los elementos de un arrays
    for i in "${colores[@]}"; do
    echo "$i"
    done

    #Mostrar los valores de un diccionario
    for i in "${Patas[@]}"; do
    echo "$i"
    done

    #Mostrar la clave de los valores de un diccionario
    for clave in "${!Patas[@]}"; do
    echo "$clave"
    done

    #for con x cantidad de ciclos, en este caso del 1 al 5
    for i in {1..5}; do
    echo $i
    done

    #for con x cantidad de ciclos y sumando x cantidad al contador, en este caso del 1 al 10 de 2 en 2
    for i in {1..10..2}; do
    echo $i
    done

    #While
     
    #ciclo con numero x de intereciones

    i=0

    while [ $i -le 2 ]
    do
    echo Number: $i
    ((i++))
    done


: 'Funciones'

    #funcion de toda la vida, imprimi un nombre o lo que deses

    funcion1() {
    echo "imprimo $1"
    }
    funcion1 "hola"

    #funcion con return, el cual retorna un valor aleatorio del 1 al 10
    funcion2() {
    return ${RANDOM:0:1}
    }