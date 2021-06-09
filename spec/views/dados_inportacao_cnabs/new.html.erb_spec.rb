require 'rails_helper'

RSpec.describe "dados_inportacao_cnabs/new", type: :view do
  before(:each) do
    assign(:dados_inportacao_cnab, DadosInportacaoCnab.new())
  end

  it "Renderiza o imput para pegar o arquivo form" do
    render

    assert_select "form[action=?][method=?]", dados_inportacao_cnabs_path, "post" do
    end
  end
end
