require 'webmachine'

class JewelleryResourceList < Webmachine::Resource
 def content_types_provided
   [['application/json', :to_json]]
 end

 def to_json
   'TODO'
 end
end

JewelleryResourceBroker = Webmachine::Application.new do |app|
 app.add_route(['list'], JewelleryResourceList)
end
