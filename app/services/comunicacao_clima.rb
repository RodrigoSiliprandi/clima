class ComunicacaoClima

    require 'net/http'
    require 'json'

    def buscar(cidade)        
        url = "https://api.openweathermap.org/data/2.5/weather?APPID=245b889ba461ab5be17430625f0029f7&q=#{cidade},br"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
    end
end


