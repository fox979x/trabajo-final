let numero1 = prompt("Ingrese el primer numero: ")
numero1 = Number.parseInt(numero1)
let numero2 = prompt("ingrese el segundo numero: ")
numero2 = Number.parseInt(numero2)

let operador = prompt("Ingrese el operador asi: + , -,* , /, %: ")

if (operador === "+"){
    let resultado = numero1 + numero2;
    document.write("El resultado de la suma es: ", resultado)
}else if (operador === "-"){
    let resultado = numero1 - numero2;
    document.write("El resultado de la resta es: ", resultado)
}else if (operador === "*"){
    let resultado = numero1 * numero2;
    document.write("El resultado de la multiplicacion es: ", resultado)
}else if (operador === "/"){
    let resultado = numero1 / numero2;
    document.write("El resultado de la division es: ", resultado)
}
