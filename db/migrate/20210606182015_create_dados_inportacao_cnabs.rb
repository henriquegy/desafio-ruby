class CreateDadosInportacaoCnabs < ActiveRecord::Migration[6.1]
  def change
    create_table :dados_inportacao_cnabs do |t|
      t.integer :tipo
      t.date :data
      t.float :valor
      t.string :cpf
      t.string :cartao
      t.time :hora
      t.string :dono_da_loja
      t.string :nome_loja

      t.timestamps
    end
  end
end
