import { saborPizza } from "./SaborPizza"
import { tamanhoPizza } from "./tamanhoPizza"


export class Pizza {
    private sabor:saborPizza 
    private tamanho:tamanhoPizza
    private preco:number

    constructor(saborDaPizza:saborPizza,tamanho:tamanhoPizza,precoPizza:number){
        this.sabor = saborDaPizza,
        this.tamanho = tamanho,
        this.preco = precoPizza
     }

     descrição ():void {
     console.log(`A pizza sabor ${this.sabor} tem o tamnho ${this.tamanho} e custa ${this.preco}`)    
}    
        
}

