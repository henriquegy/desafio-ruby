require 'rails_helper'

RSpec.describe "dados_inportacao_cnabs/show", type: :view do
  before(:each) do
    @dados_inportacao_cnab = assign(:dados_inportacao_cnab, DadosInportacaoCnab.create!())
  end

  it "Mostra o @dados_inportacao_cnab por individual <p>" do
    render
  end
end
