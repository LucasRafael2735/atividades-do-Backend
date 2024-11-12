export class Animal {
    name:string;
    weight: number;


constructor (name: string, weight: number){
       this.name = name
       this.weight = weight

}
   
  eat(quantidy:number):void {
      console.log(`The animal has eaten ${quantidy} piece of meat`)

  }

}