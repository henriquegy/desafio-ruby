class DadosInportacaoCnabsController < ApplicationController
  before_action :set_dados_inportacao_cnab, only: %i[ show destroy ]

  # GET /dados_inportacao_cnabs or /dados_inportacao_cnabs.json
  def index
    @dados_inportacao_cnabs = DadosInportacaoCnab.all.order(:nome_loja)
  end

  # GET /dados_inportacao_cnabs/1 or /dados_inportacao_cnabs/1.json
  def show
  end

  # GET /dados_inportacao_cnabs/new
  def new
    @dados_inportacao_cnab = DadosInportacaoCnab.new
  end

  # POST /dados_inportacao_cnabs or /dados_inportacao_cnabs.json
  def create
    errors = []

    if params.has_key?(:dados_inportacao_cnab)
      @arquivo = dados_inportacao_cnab_params['arquivo']

      File.open(@arquivo.tempfile.path).each do |linha|
        begin
          tipo = linha.slice(0)
          data = linha.slice(1, 8)
          valor = linha.slice(9, 10)
          cpf = linha.slice(19, 11)
          cartao = linha.slice(30, 12)
          hora = linha.slice(42, 6)
          hora_formatada = "#{hora.slice(0, 2)}:#{hora.slice(2, 2)}:#{hora.slice(4, 2)}"
          dono_da_loja = linha.slice(48, 14)
          nome_loja = linha.slice(62, 19)

          DadosInportacaoCnab.create(
            tipo: tipo, data: data, valor: valor.to_f / 100,
            cpf: cpf, cartao: cartao, hora: hora_formatada, dono_da_loja: dono_da_loja,
            nome_loja: nome_loja
          )
        rescue Exception => err
          errors << err.message
        end
      end

      if errors.blank?
        redirect_to dados_inportacao_cnabs_path, notice: "Arquivo importado com sucesso."
      else
        redirect_to dados_inportacao_cnabs_path, error: "Erro na importação do arquivo, tente novamente."
      end
    end
  end

  # DELETE /dados_inportacao_cnabs/1 or /dados_inportacao_cnabs/1.json
  def destroy
    @dados_inportacao_cnab.destroy
    respond_to do |format|
      format.html {
        redirect_to dados_inportacao_cnabs_url,
                    notice: "Dados inportacao cnabs deletado com sucesso."
      }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dados_inportacao_cnab
      @dados_inportacao_cnab = DadosInportacaoCnab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dados_inportacao_cnab_params
      params.require(:dados_inportacao_cnab).permit(
        :tipo, :data, :valor, :cpf, :cartao,
        :hora, :dono_da_loja, :nome_loja, :arquivo
      )
    end
end
