class ComunicacaoProximasHoras

    require 'net/http'
    require 'json'
    require 'time'


    def buscar(cidade)        
        url = "http://api.openweathermap.org/data/2.5/forecast?APPID=245b889ba461ab5be17430625f0029f7&q=#{cidade},br"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        result = []               
        retorno["list"].each do |horario|           
            result << {Hora: Time.at(horario["dt"]),
                            Clima: horario["clouds"]["all"], 
                            Descrição: horario["weather"][0]["description"],
                            Temperatura: horario["main"]["temp"],
                            Pressão: horario["main"]["pressure"],
                            Humidade: horario["main"]["humidity"],
                            Temperatura_Mínima: horario["main"]["temp_min"],
                            Temperatura_Máxima: horario["main"]["temp_max"],
                            Vento: horario["wind"]["speed"]
                          }                                                    
                    end      
          result
    end
end
