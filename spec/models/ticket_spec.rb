require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it 'should test that the factory is valid' do 
    lane = FactoryBot.build :lane, title: 'new lane'
    lane.save!
    expect(FactoryBot.build :ticket, title: 'new ticket', lane_id: lane.id).to be_valid
  end

  it "should validate the presence of the title" do 
    lane = FactoryBot.build :ticket, title: ''
    expect(lane).not_to be_valid 
    expect(lane.errors.messages[:title]).to include("can't be blank")
  end

  it "should validate the presence of the lane_id" do 
    lane = FactoryBot.build :ticket, title: 'new ticket'
    expect(lane).not_to be_valid 
    expect(lane.errors.messages[:lane_id]).to include("can't be blank")
  end
end
