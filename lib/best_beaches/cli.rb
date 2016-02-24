class BestBeaches::CLI

  def call
    
    get_beaches
    display_beaches
  end


  def get_beaches
   beaches_array = BestBeaches::Scraper.scrape_index_page
   BestBeaches::Beach.create_from_collection(beaches_array)
  end

  def menu
    puts "Select a beach."
    input=gets.strip
 end

  def display_beaches
     BestBeaches::Beach.all.each do |beach|
       puts "#{beach.name }: #{beach.map}"
       puts "#{beach.location}"
    end
  end
end