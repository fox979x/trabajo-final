//array inicializado

let names =["pepe", "juan", "pedro"]

//array definido

let courses = new Array();

courses[0] = "math";
courses[1] = "spanish";
courses[2] = "english";

console.log(courses)
document.write(courses)
document.write("<br>");

for (let i = 0; i < courses.length; i++){

    document.write(courses[i] + "<br>")
}