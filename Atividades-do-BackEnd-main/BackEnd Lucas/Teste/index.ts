class Carro {

    private velocidade: number

    constructor(velocidade: number){
         this.velocidade = velocidade 

    }
   getVelocidade():number{
    return this.velocidade

   }

   setVelocidade(novaVelocidade:number):number | string{
      if (this.velocidade > 0) { 
    return this.velocidade = novaVelocidade
   } else { 
       return 'A velocidade não pode ser 0 ou negativa'
   }


   }

      
}