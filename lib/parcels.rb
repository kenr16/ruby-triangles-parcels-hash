class Parcel
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height

  end

  define_method(:volume) do
    @length * @width * @height
  end

  define_method(:cost_to_ship) do |distance|
    self.volume() * distance / 100
  end
end
