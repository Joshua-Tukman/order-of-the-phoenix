class PotterService
  def phoenix_members(house)
    response = get_json("/v1/characters?house=#{house}&orderOfThePhoenix=true")
    members = response.map{ |member_info| Member.new(member_info) }
  end 


  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new("https://www.potterapi.com") do |faraday|
      faraday.params['key'] = ENV['POTTER_API_KEY']
    end 
  end

end