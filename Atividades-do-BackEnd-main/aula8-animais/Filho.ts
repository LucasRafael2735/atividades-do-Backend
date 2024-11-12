import { Pai } from "./Pai"; 

export class Filho extends Pai {
        escola: string
     constructor(nome: string, idade:number, escola: string){
           super(nome,idade)
           this.escola = escola
     }

      maratona():void {
        console.log(`O ${this.nome} foi para escola ${this.escola} .`)
      }

}

