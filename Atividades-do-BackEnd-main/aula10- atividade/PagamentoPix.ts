import { Pagamentos } from "./Pagamentos";

export class PagamentoPix implements Pagamentos {
   
    pagar(): void {
      console.log('O pagamento via PIX foi realizado')   
    }
           
}

