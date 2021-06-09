class DadosInportacaoCnab < ApplicationRecord
  enum tp_transacoes: {
    debito: 1,
    boleto: 2,
    financiamento: 3,
    credito: 4,
    receb_emprest: 5,
    vendas: 6,
    receb_ted: 7,
    receb_doc: 8,
    aluguel: 9
  }
end
