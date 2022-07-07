require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it 'should test that the factory is valid' do
    expect(FactoryBot.build :ticket).to be_valid
  end
end
