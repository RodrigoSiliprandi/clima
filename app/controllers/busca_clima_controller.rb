class BuscaClimaController < ApplicationController

    def buscar_atual
        render json: ComunicacaoClima.new.buscar(cidade_params[:cidade]), status: :ok
    end

    def buscar_proximas_horas
        render json: ComunicacaoProximasHoras.new.buscar(cidade_params[:cidade]), status: :ok
    end

    def buscar_proximos_dias
        render json: ComunicacaoProximosDias.new.buscar(cidade_params[:cidade]), status: :ok 
    end
     
    private

    def cidade_params
        params.permit(:cidade)
    end
end
