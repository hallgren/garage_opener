require "garage_opener/version"
require "mqtt"

module GarageOpener
  
  @host="<mqtt_host_url>"
  @user="<user>"
  @password="<password>"
  @topic="<topic>"

  # Your code goes here...
  def self.toogle
    MQTT::Client.connect("mqtt://#{@user}:#{@password}@#{@host}", client_id: 'ruby') do |client|
      client.publish @topic, "toggle"
    end
  end
end
