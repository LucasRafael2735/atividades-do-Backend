"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Carro = void 0;
var Carro = /** @class */ (function () {
    function Carro(marca, tipo, potencia) {
        this.marca = marca;
        this.tipo = tipo;
        this.potencia = potencia;
    }
    Carro.prototype.marcaCarro = function () {
        console.log("O carro da marca ".concat(this.marca, " est\u00E1 ligando"));
    };
    Carro.prototype.tipagem = function () {
        console.log("Ele \u00E9 do tipo ".concat(this.tipo));
    };
    Carro.prototype.cavalosDePotencia = function () {
        console.log("Ele deve ter ".concat(this.potencia, " cavalos de potencia "));
    };
    return Carro;
}());
exports.Carro = Carro;
