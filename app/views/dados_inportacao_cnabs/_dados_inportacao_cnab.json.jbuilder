json.extract! dados_inportacao_cnab, :id, :tipo, :data, :valor, :cpf, :cartao, :hora, :dono_da_loja, :nome_loja, :created_at, :updated_at
json.url dados_inportacao_cnab_url(dados_inportacao_cnab, format: :json)
