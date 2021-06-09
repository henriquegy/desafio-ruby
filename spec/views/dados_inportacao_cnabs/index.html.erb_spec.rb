require 'rails_helper'

RSpec.describe "dados_inportacao_cnabs/index", type: :view do
  before(:each) do
    assign(:dados_inportacao_cnabs, [
      DadosInportacaoCnab.create!(),
      DadosInportacaoCnab.create!()
    ])
  end

  it "Renderiza a lista dados_inportacao_cnabs" do
    render
  end
end
