task :fetch_kvk => :environment do
  require 'nokogiri'
  require 'open-uri'

  Bedrijf.find_all_by_status(nil).each do |bedrijf|
    
   
      
    url = "https://server.db.kvk.nl/TST-BIN/FU/TSWS001@?BUTT=#{bedrijf.kvk}"

    doc = Nokogiri::HTML(open(url, :ssl_verify => false))
   
    status = doc.at_css(".alert").text
    puts status
    bedrijf.update_attribute(:status, status)
  end

end
  