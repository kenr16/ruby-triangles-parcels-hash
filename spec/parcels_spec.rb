require('rspec')
require('parcels')
require('pry')


describe(Parcel) do
  describe('#volume') do
    it("Returns the volume of the parcel.") do
      test_trio = Parcel.new(2, 2, 8)
      expect(test_trio.volume()).to(eq(32))
    end
  end

  describe('#cost_to_ship') do
     it("Returns the cost to ship the parcel.") do
       test_trio = Parcel.new(2, 2, 8)
       expect(test_trio.cost_to_ship(200)).to(eq(64))
     end
  end
end
