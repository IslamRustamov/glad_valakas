require 'nokogiri'
require 'httparty'

class Valakas
  def self.photo_urls
    PhotoParser.new.get_photos_urls
  end
end

# Creating photo parser class since
# future development is planned
# (adding audio parser, video parser and etc.)
class PhotoParser
  # Link to the pics
  ALBUM = 'https://vk.com/album-65249820_259499294?rev=1'

  attr_reader :photo_urls

  def initialize
    @photo_urls = []
  end

  # This function returns array of URLs
  def get_photos_urls
    photo_page = HTTParty.get(ALBUM)
    @parsed_photo_page = Nokogiri::HTML(photo_page)

    @parsed_photo_page.xpath('//img').each do |data|
      @photo_urls.push data.attr('data-src_big').to_s.match(/https\S+jpg/).to_s
    end

    # Deleting all empty elements (it's needed, trust me)
    @photo_urls -= [""]
  end
end
