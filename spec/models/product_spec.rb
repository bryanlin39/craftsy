require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of :name; :description; :price }

  it { should have_many :reviews }
  it { should have_many(:users).through(:reviews) }
end
