class GreetingSerializer < Oat::Serializer
  adapter Oat::Adapters::JsonAPI

  schema do
    type "greeting"
    properties do |property|
      property.message "Hello, World"
    end
  end
end
