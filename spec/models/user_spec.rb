require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :reviews }
  it { should have_many(:products).through(:reviews) }
end
