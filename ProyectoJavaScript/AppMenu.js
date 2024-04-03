let init = prompt("Presione 1 para iniciar");
while (init != 0){
    let opc = parseInt(prompt("Seleccione \n 1. Registrar un usuario \n 2. Iniciar sesion \n 3. Salir"))

switch (opc){
    case 1:
        document.write("1. Registro");
        
        
        break;
    case 2:
        document.write("2. Iniciar sesion");
        let email = "pepe@cesde.net";
let password = "1234";
let userEmail = prompt("Ingrese el correo registrado");
let userPassword = prompt("Ingrese la contraseña registrada");

if(email.match(userEmail) && password.match(userPassword)){
    document.write("<br> bienvenido al sistema");
    init = 0;
} else{
    alert("valide sus credenciales");
}
        break;
    case 3:
        document.write("3. salir");
        init = 0;
        break;
    default:
        alert("seleccione la opcion correcta");
        break;
}
}