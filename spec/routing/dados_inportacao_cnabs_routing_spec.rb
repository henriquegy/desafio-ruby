require "rails_helper"

RSpec.describe DadosInportacaoCnabsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dados_inportacao_cnabs").to route_to("dados_inportacao_cnabs#index")
    end

    it "routes to #new" do
      expect(get: "/dados_inportacao_cnabs/new").to route_to("dados_inportacao_cnabs#new")
    end

    it "routes to #show" do
      expect(get: "/dados_inportacao_cnabs/1").to route_to("dados_inportacao_cnabs#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/dados_inportacao_cnabs").to route_to("dados_inportacao_cnabs#create")
    end

    it "routes to #destroy" do
      expect(delete: "/dados_inportacao_cnabs/1").to route_to("dados_inportacao_cnabs#destroy", id: "1")
    end
  end
end
