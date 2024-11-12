import { Pai } from "./Pai"; 
import { Filho } from "./Filho"; 
import { Neto } from "./neto"; 

const pai:Pai = new Pai ('José', 60) 

const filho:Filho = new Filho ('Cleber', 30, 'Unisinos')

const neto:Neto = new Neto ('Enzo',1,'creche','Pampers')

console.log(pai.nome,pai.idade, filho.nome,filho.idade, filho.escola, neto.nome,neto.idade,neto.escola,neto.fralda) 

pai.andar()
filho.andar()
neto.andar()

pai.falar()
filho.falar()
neto.falar()

pai.comer()
filho.comer()
neto.comer()

filho.maratona()

neto.chorar()



