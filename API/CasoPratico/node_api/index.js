const express = require('express')
const req = require('express/lib/request')

const axios = require('axios')

const app = express() // iniciando o express
app.listen('3000')

//app.route('/').get((req, res) => res.send('Hello'))

//app.route('/Sobre').get((req, res) => res.send('Hello sobre'))

//app.get('/', (req, res) => res.send('Minha API'));

//Middleware
app.use(express.json())

//variaveis
let author = "Arcelinda"
// Rotas
//app.route('/').post ( (req,res) => console.log(req.body))


app.route('/').post((req, res) => {
    //data.push(req.body)      
    res.send(req.body)

})

app.route('/').put((req, res) => {
    author = req.body.author
    res.send(author)

})
/*
app.route('/').get((req, res) => res.send(author))

app.route('/:identificador').delete((req, res) => {
    
    res.send(req.params.identificador)
  })*/

//Delete
/*

app.route('/:identificador').delete((req, res) => {
    let idToDelete = req.params.identificador
    let result = []
    for (index = 0; index < data.length; index++) {

        if (data[index].id === idToDelete) { // procurar o id do objecto que pretende eliminar
            console.log("Removido: ", data[index])
            result = data.splice(index, 1)           // remove o objecto da "base de dados" em memoria
        }
    }
    console.log(data)                       // verificar se objecto foi removido

    res.send(result)      // retorna a resposta da requisicao
})

let data = []
*/

app.route('/').get ((req,res) => {

    axios.get('https://api.github.com/users/Arcelinda')
//.then(result =>res.send(result.data.avatar_url))
.then(result =>res.send(`<img src = "${result.data.avatar_url}"/>`))
.catch(error =>console.error(error))

})