require 'rails_helper'

RSpec.describe Property, type: :model do
  it "is valid with title, description, address, cityname, property_type and price" do
    p = create(:property, :ny, :apt)
    expect(p).to be_valid
  end

  it "is invalid without title" do
    p = build(:property, :ny, :residential, :apt, :title => nil)
    expect(p).to have(1).errors_on(:title)
  end

  it "is invalid without address" do
    p = build(:property, :la, :address => nil)
    expect(p).to have(1).errors_on(:address)
  end

  it "is invalid without cityname" do
    p = build(:property, :dpx, :rental, :city => nil)
    expect(p).to have(1).errors_on(:city)
  end

  it "is invalid without a price" do
    p = build(:property, :dpx, :price => nil)
    expect(p).to have(2).errors_on(:price)
  end

  it "is invalid without a positive price" do
    p = build(:property, :dpx, :price => -10)
    expect(p).to have(1).errors_on(:price)
  end
end
