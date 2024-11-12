import { Animal } from "./animal";

export class Coruja extends Animal {
       featherColor: string;
    constructor(name:string, weight:number,featherColor: string){
        super(name,weight) 
        this.featherColor = featherColor
     }
      
     feather():void {
        console.log(`The owl has beautiful ${this.featherColor} feather.`)
     }

}