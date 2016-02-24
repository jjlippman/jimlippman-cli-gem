
class BestBeaches::Scraper

  def self.scrape_index_page
   beach_hash={}
   beach_array=[]
    doc=Nokogiri::HTML(open("http://www.travelchannel.com/interests/beaches/articles/top-10-beaches-in-florida"))
    
    beaches=doc.css('.poi-wrapper')
    beaches.each do |beach|
     beach_hash = {:name => beach.css("h5.poi-title").text.strip, :description => beach.css(".poi-description").text.strip,
      :location => beach.css(".city").text.strip}
        beach_array << beach_hash
    end
    

      beaches=doc.css('.poi-contact a')
      beaches.each_with_index do |beach, i|
        beach_array[i][:map] = beach['href']
      end
         


    beach_array
  end
  

  

end




