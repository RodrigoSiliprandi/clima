class ComunicacaoClima

    require 'net/http'
    require 'json'
    require 'time'

    def buscar(cidade)        
        url = "https://api.openweathermap.org/data/2.5/weather?APPID=245b889ba461ab5be17430625f0029f7&q=#{cidade},br"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        temp = {"Data": Time.at(retorno["dt"]),
                    "Clima": retorno["weather"][0]["main"], 
                    "Descrição": retorno["weather"][0]["description"],
                    "Temperatura": retorno["main"]["temp"],
                    "Pressão": retorno["main"]["pressure"],
                    "Humidade": retorno["main"]["humidity"],
                    "Temperatura Maxima": retorno["main"]["temp_max"],
                    "Temperatura Minima": retorno["main"]["temp_min"],
                    "Vento": retorno["wind"]["speed"],
                    "Alvorada": Time.at(retorno["sys"]["sunrise"]),
                    "Crepúsculo": Time.at(retorno["sys"]["sunset"])}
    end
end