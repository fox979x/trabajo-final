// vamos a crear un inicio de sesion simple sin validaciones por ahora

let email = "pepe@cesde.net";
let password = "1234";

let userEmail = prompt("Ingrese el correo registrado");
let userPassword = prompt("Ingrese la contraseña registrada");

if(email.match(userEmail) && password.match(userPassword)){
    document.write("bienvenido al sistema");
} else{
    alert("valide sus credenciales");
}