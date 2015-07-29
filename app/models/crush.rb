class Crush < ActiveRecord::Base
  belongs_to :user

  acts_as_votable

  validates_presence_of :picture, :title, :description, :user_id, :crushed, :address

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/\

  def build_url
    pretty_address = address.downcase.tr(" ","+")
    key = 'AIzaSyBQBLbDut_Q24cYdxx7LN0oaAotUf-gL08'
    built_url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{pretty_address}&key=#{key}"
  end

  def build_place_hash(lat,lng)
    { lat: lat, lng: lng }
  end

  def process_url(url)
    data = RestClient::Request.execute(url: url, method: :get, verify_ssl: false)
    json_data = JSON.parse(data)
    results = json_data['results']
    places = []
    results.each do |place|
      place_hash = build_place_hash(place['geometry']['location']['lat'],place['geometry']['location']['lng'])
      places << place_hash
    end
    places
  end

  def show_places(places)
    places
  end

end
