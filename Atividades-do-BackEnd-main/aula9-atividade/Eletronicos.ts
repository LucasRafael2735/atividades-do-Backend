import { Produtos } from "./Produtos";


export class Eletronicos implements Produtos {
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

    mostrarPreco(): void | number {
        console.log(`O preco desse produto é ${this.preco}`)
    } 

    mostrarPeso(): void {
        console.log(`Esse produto pesa ${this.peso}`)
    }

}


