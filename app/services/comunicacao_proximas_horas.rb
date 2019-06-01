class ComunicacaoProximasHoras

    require 'net/http'
    require 'json'

    def buscar(cidade)        
        url = "http://api.openweathermap.org/data/2.5/forecast?APPID=245b889ba461ab5be17430625f0029f7&q=#{cidade},br"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
    end
end
