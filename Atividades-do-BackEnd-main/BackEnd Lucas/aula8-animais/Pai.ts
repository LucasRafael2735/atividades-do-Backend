export class Pai {
   public nome: string
   public idade: number

   constructor(nome: string, idade: number){
    this.nome = nome
    this.idade = idade
   }
   
  andar():void {
    console.log(`${this.nome} andou até a cozinha`)
  }

  falar():void {
    console.log(`O ${this.nome} falou que tem ${this.idade}`)
  } 

  comer():void {
    console.log(`${this.nome} comeu algo na cozinha`)
  }


}

