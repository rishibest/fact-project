require "nokogiri"
require "open-uri"


class Facts
  def initialize 
    fact_html = open("http://www.omgfacts.com/top")
    @nokogiri_doc = Nokogiri::HTML(fact_html)
  end

  def title
    omg_facts_title = @nokogiri_doc.css("head title").text
    omg_facts_title
  end

  def facts
    omg_facts_array = @nokogiri_doc.css(".post .primary").collect do |item|
    item.text.strip
    end
    omg_facts_array
  end

  def random_fact
    facts.sample
  end


end 
