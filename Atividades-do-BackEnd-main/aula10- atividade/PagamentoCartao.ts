import { Pagamentos } from "./Pagamentos";

export class PagamentoCartao implements Pagamentos {
   
    pagar(): void {
      console.log('O pagamento via CARTÃO foi realizado')   
    }
           
}

