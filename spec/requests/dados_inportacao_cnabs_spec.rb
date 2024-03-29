 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/dados_inportacao_cnabs", type: :request do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "Renderiza a listagem" do
      DadosInportacaoCnab.create! valid_attributes
      get dados_inportacao_cnabs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "Renderiza o dado pelo id" do
      dados_inportacao_cnab = DadosInportacaoCnab.create! valid_attributes
      get dados_inportacao_cnab_url(dados_inportacao_cnab)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "Renderiza a pagina de inserção do arquivo." do
      get new_dados_inportacao_cnab_url
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "Com parametros validos" do
      it "Cria um novo DadosInportacaoCnab" do
        expect {
          post dados_inportacao_cnabs_url, params: { dados_inportacao_cnab: valid_attributes }
        }.to change(DadosInportacaoCnab, :count).by(1)
      end

      it "Redireciona para a listagem de dados_inportacao_cnab" do
        post dados_inportacao_cnabs_url, params: { dados_inportacao_cnab: valid_attributes }
        expect(response).to redirect_to(dados_inportacao_cnab_url(DadosInportacaoCnab.last))
      end
    end

    context "Com parametros invalidos" do
      it "Não cria um novo DadosInportacaoCnab" do
        expect {
          post dados_inportacao_cnabs_url, params: { dados_inportacao_cnab: invalid_attributes }
        }.to change(DadosInportacaoCnab, :count).by(0)
      end

      it "Permanece na mesma pagina new" do
        post dados_inportacao_cnabs_url, params: { dados_inportacao_cnab: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "Deleta o dados_inportacao_cnab informado." do
      dados_inportacao_cnab = DadosInportacaoCnab.create! valid_attributes
      expect {
        delete dados_inportacao_cnab_url(dados_inportacao_cnab)
      }.to change(DadosInportacaoCnab, :count).by(-1)
    end

    it "Redireciona para a listagem de dados_inportacao_cnabs" do
      dados_inportacao_cnab = DadosInportacaoCnab.create! valid_attributes
      delete dados_inportacao_cnab_url(dados_inportacao_cnab)
      expect(response).to redirect_to(dados_inportacao_cnabs_url)
    end
  end
end
