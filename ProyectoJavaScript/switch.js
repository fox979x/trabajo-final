let opc = parseInt(prompt("Seleccione \n 1. Registrar un usuario \n 2. Iniciar sesion \n 3. Salir"))

switch (opc){
    case 1:
        document.write("1. Registro");
        break;
    case 2:
        document.write("2. Iniciar sesion");
        break;
    case 3:
        document.write("3. salir");
        break;
    default:
        alert("seleccione la opcion correcta");
        break;
}