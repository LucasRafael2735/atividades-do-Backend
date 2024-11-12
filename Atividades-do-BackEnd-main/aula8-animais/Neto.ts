import { Filho } from "./Filho"; 


export class Neto extends Filho {
     fralda: string
   constructor(nome: string, idade:number, correu: string, fralda: string){
    super(nome,idade,correu) 
    this.fralda = fralda
   } 

   chorar():void {
    console.log(`O ${this.nome} está chorando porque não quer usar a fralda ${this.fralda}`)
   }

   andar():void {
    console.log(`${this.nome} engatinhou até a cozinha`)
  }


} 

