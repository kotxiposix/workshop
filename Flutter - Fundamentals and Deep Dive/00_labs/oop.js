let name = 'John';
let age = 20;

function getBirthYear() {
    return new Date().getFullYear() - age;
}

let date = getBirthYear();
console.log(date)

let person = {
    name: 'Doe',
    age: 23,
    getBirthYear: function () {
        return new Date().getFullYear() - this.age;
    }
}

let year2 = person.getBirthYear()
console.log(year2)