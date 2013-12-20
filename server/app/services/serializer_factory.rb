SerializerFactory = Struct.new(:resource) do
  CURRENT_VERSION = 'V1'

  def to_h
    { serialization => serializer }
  end

  def serializer
    "Api::#{CURRENT_VERSION}::#{serialized_class}Serializer".constantize
  end

  private
  def singular?
    !resource.respond_to?(:each)
  end

  def serialization
    singular? ? :serializer : :each_serializer
  end

  def serialized_class
    (singular? ? resource : resource.first).class
  end
end
