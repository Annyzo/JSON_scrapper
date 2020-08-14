
class Scrapper
    
    #Recupération de l'e-mail d'une mairie du Val d'Oise
    def get_townhall_email(townhall_url)
        page = Nokogiri::HTML(open(townhall_url)) 
        email_array = []
  
        email = page.xpath('//*[contains(text(), "@")]').text
        town = page.xpath('//*[contains(text(), "Adresse mairie de")]').text.split 
  
        email_array << {"ville" => town[3],"email" => email} 
        puts email_array
        return email_array
    end
  
    #Recupération des URLs de chaque ville du Val d'Oise
    def get_townhall_urls
        page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
        url_array = []
  
        urls = page.xpath('//*[@class="lientxt"]/@href') 
  
        urls.each do |url| 
            url = "http://annuaire-des-mairies.com/"+ url.text[1..-1] 
            url_array << url
        end
        return url_array
    end
  
    # liste de ville avec l'Email dans un array
    def initialize
        ar = []
        url_array = get_townhall_urls
        url_array.each do |townhall_url| 
            ar << get_townhall_email(townhall_url)
         end
        @hash = ar.flatten
        return @hash
    end

    # test de l'affichage
    def show
        print @hash
    end

    # fonction d'enregistrement liste dans fichier JSON
    def save_to_JSON
        File.open("db/emails.json","w") do |f|
            f.write(@hash.map{|i| Hash[i.each_pair.to_a]}.to_json)
        end
    end

    #fonction d'enregistrement liste dans fichier CSV
    def save_to_csv
        CSV.open("db/emails.csv", "wb") do |csv|
            csv << @hash.first.keys
            @hash.each do |hashs|
                csv << hashs.values
            end
        end
    end
    
    #fonction d'enregistrement dans un sheets en ligne
    
    def save_to_spreadsheet

        
    end  

end