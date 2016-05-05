require 'rails_helper'

RSpec.describe Api::V1::IdeasController, type: :controller do
  it "serves up ideas" do
    make_ideas(3)
    get :index

    reply = JSON.parse(response.body)
    expect(reply.length).to eq 3
    expect(reply[0]["title"]).to eq "title0"
    expect(reply[1]["title"]).to eq "title1"
    expect(reply[2]["title"]).to eq "title2"
  end
end
