require 'rails_helper'

RSpec.describe Lane, type: :model do
  it 'should test that the factory is valid' do 
    expect(FactoryBot.build :lane, title: 'new lane').to be_valid
  end

  it "Should validate the presence of the title" do 
    lane = FactoryBot.build :lane, title: ''
    expect(lane).not_to be_valid 
    expect(lane.errors.messages[:title]).to include("can't be blank")
  end
end
