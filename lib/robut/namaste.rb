require 'open-uri'
require 'nokogiri'

class Robut::Plugin::Namaste
	include Robut::Plugin

	def handle(time, sender_nick, message)
		if sent_to_me?(message)
			phrase = words(message).join(' ')
			if phrase =~ /^namaste me/i
				html = Nokogiri::HTML(open('http://stayoutofmynamastespace.com/random'))
				reply get_namaste()
			end
		end
	end
end

def get_namaste
	html = Nokogiri::HTML(open('http://stayoutofmynamastespace.com/random'))
	quote = html.css("blockquote").text.strip.capitalize
	citation = html.xpath("//html/body/section/section/div/article/div/section/div").text.strip.capitalize

	res = quote + " - " + citation

	# Tries again to get new quote if previous attempts returned invalid responses. 
	if res.empty? || res.nil? || res.to_s.length > 350 || res == " - "
		res = get_namaste()
	else
		return res
	end
end