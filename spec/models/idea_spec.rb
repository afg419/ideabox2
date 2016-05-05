require 'rails_helper'

RSpec.describe Idea, type: :model do
  it "defaults to 0 quality" do
    i = Idea.new
    expect(i.quality).to eq 0
  end
end
