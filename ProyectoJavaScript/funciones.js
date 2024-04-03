let userName;

let email;

let password;

let userData = new Array();

function RegistrarUsuario(){

    userName = prompt("Ingrese el nombre de usuario");
userData.push(userName);
    email = prompt("Registre el correo del usuario: ");
userData.push(email);
    password = prompt ("Registre el password");
userData.push(password)

for(let i = 0; i< userData.length; i++){

    document.write("Dato " + i + ": " + userData[i] + "</br>");
 }
}

RegistrarUsuario();