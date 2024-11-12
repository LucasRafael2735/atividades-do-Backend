import { Eletronicos } from "./Eletronicos"; 
import { Comidas } from "./comidas";
import { Livros } from "./Livros";

const meusEletronicos:Eletronicos = new Eletronicos(10000, 145,'celular','Iphone') 
const minhasComidas:Comidas = new Comidas(5,15,'fruta','Maçã')
const meusLivros:Livros = new Livros(60,300,'fantasia','João e Maria')  


console.log(meusEletronicos)
console.log(minhasComidas)
console.log(meusLivros)


