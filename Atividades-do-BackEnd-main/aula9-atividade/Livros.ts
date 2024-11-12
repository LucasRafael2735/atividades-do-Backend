import { Produtos } from "./Produtos";

export class Livros implements Produtos {

    nome: string;
    peso: number;
    preco: number;
    tipo: string;

    constructor(preco: number, peso: number, tipo: string, nome: string){
        this.nome = nome
        this.peso = peso 
        this.preco = preco
        this.tipo = tipo
    }

    mostrarPreco(): void {
        console.log(`O preco desse produto é ${this.preco}`)
    }

    mostrarPeso(): void {
        console.log(`Esse produto pesa ${this.peso}`)
    }

    mostrarTipo () : void {
        console.log(`Esse produto é do tipo ${this.tipo}`)

    } 

     mostrarNome () : void {
        console.log(`O nome desse produto é ${this.nome}`)
     }

    
}
