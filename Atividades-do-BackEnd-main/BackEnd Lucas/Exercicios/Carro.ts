export class Carro {
    marca: string;
    tipo: string;
    potencia: number;
    velocidade: number; 

    constructor(marca: string,tipo: string,potencia: number, velocidade: number) {
        this.marca = marca 
        this.tipo = tipo
        this.potencia = potencia
        this.velocidade = velocidade
    }


    marcaCarro ():void {
        console.log(`O carro da marca ${this.marca} está ligando`)
    }

   tipagem () :void {
       console.log(`Ele é do tipo ${this.tipo}`)
   }
   

   cavalosDePotencia ():void {
      console.log(`Ele deve ter ${this.potencia} cavalos de potencia `)
   }


}

const meuCarro:Carro = new Carro()




