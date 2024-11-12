import { Pagamentos } from "./Pagamentos";

export class PagamentoDinheiro implements Pagamentos {
   
    pagar(): void {
      console.log('O pagamento em  DINHEIRO foi realizado')   
    }
           
}

