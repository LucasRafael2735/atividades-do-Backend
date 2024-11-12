/////////// Atividade :)
/*
Crie uma interface chamada produtos que tenha  os seguintes atributos: tipo, preco, nome, peso.
Cre pelo menos um metodo obrigatório nesta interface. 
crie 3 classes que utilize esta interface. Crie um método diferente para cada produto. 
Intancie as classes no index.ts  e chame  estes métoeo e atributos.
*/


export interface Produtos {
     nome: string
     peso: number
     preco: number
     tipo: string

     mostrarPreco():void 
}
