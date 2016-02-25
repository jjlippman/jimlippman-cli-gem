class BestBeaches::CLI

  def call
    get_beaches
    menu
  end

  def get_beaches
    beaches_array = BestBeaches::Scraper.scrape_index_page
    BestBeaches::Beach.create_from_collection(beaches_array)
  end

  def menu
    input=""
    
    while input!="E"
      display_beaches
      puts "SELECT A BEACH. Enter number."
      
      i=gets.strip
      beach = BestBeaches::Beach.find_beach(i.to_i-1)
      display_beach(beach)
      
      puts "\nEnter L to list beachs or E to exit."
      input=gets.strip.upcase
    end
 end

  def display_beaches
      BestBeaches::Beach.all.each_with_index do |beach, index|
       puts "#{index + 1}. #{beach.name} -- #{beach.location} "
     end
  end

  def display_beach(beach)
    puts "#{beach.description}"
    puts
    puts "MAP-URL: #{beach.map}" 
  end
end