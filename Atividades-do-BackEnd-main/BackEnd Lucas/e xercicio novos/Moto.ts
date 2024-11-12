export class Moto {
    
    marca: string;
    versao: string;
    potencia: number;
    velocidade: number;

    contructor(marca: string, versao: string, potencia: number, velocidade: number) {
        this.marca = marca 
        this.versao = versao
        this.potencia = potencia
        this.velocidade = velocidade
    }

    myMoto ():void {
        console.log(`A moto da marca ${this.marca} está ligando`)
    }

   _versão () :void {
       console.log(`Ela é da versão ${this.versao}`)
   }
   

    potência ():void {
      console.log(`Ela deve ter ${this.potencia} de potência `)
   }


}


const minhaMoto:Moto = new Moto()
