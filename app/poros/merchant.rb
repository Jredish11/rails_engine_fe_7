class Merchant
  attr_reader :id,
              :type,
              :name
  def initialize(data)
    @id = data[:id]
    @type = data[:type]
    @name = data[:attributes][:name]
  end
end