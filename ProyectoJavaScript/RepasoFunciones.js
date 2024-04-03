/*function saludo(){
    console.log("Hola");
}
saludo();

let nombre;

let valor;

function multiplicador(nombre, valor){

    nombre = prompt("Ingrese nombre")
    valor = prompt("Ingrese el valor" )
    multi = prompt("ingrese la cantidad de horas a trabajar ")
    let total = valor * multi
    alert("El valor a pagar a:" +nombre+ "es de $" + total)
    document.write(nombre + "va a pagar un total de: $" + total)

}
multiplicador();*/
/*
let nota1;
let nota2;
let nota3;
let notas = new Array();

function promedio(){

    nota1 = parseInt(prompt("Ingrese nota uno"));
    notas.push(nota1);
    nota2 = parseInt(prompt("Ingrese nota dos"));
    notas.push(nota2);
    nota3 = parseInt(prompt("Ingrese nota tres"));
    notas.push(nota3);
    let promedio = (nota1 + nota2 + nota3) / 3
    alert("Tus notas son" + notas)
    alert(" Tu promedio es" + promedio)
}
promedio();*/
/*
function cargaDelCelular(){
    let bateria = parseInt(prompt("Ingrese la bateria del celular"))
    if(bateria == 100){
        alert("desconecte el cargador")
    }else if( bateria = 50 < 99){
        alert("carga a la mitad")
    }else if( bateria = 16 < 49){
        alert("carga baja")
    }else if( bateria == 15){
        alert("carga minima")
    }else if( bateria = 15 < 1){
        alert("carga extremada mente minima")
    }else if( bateria == 0){
        alert("apagando el celular")
    }


}
cargaDelCelular();
*/

let nivelBateria = Math.random() * 100;
console.log(nivelBateria);

function verNivelBateria(nivelBateria){

    if (nivelBateria == 100){
        alert("Carga completa"); 
    }else if (nivelBateria < 100 && nivelBateria > 50){
        alert("Carga alta");
    }else if(nivelBateria <= 50 && nivelBateria >15){
        alert("Carga menos al 50%");
    }else if(nivelBateria  <= 15 && nivelBateria >0){
        alert("carga baja activando ahorro de bateria");
    }else{
        alert("Apagando el equipo");
    }
}
verNivelBateria(nivelBateria);