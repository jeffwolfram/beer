require 'rails_helper'

RSpec.describe "brews/index", type: :view do
  before(:each) do
    assign(:brews, [
      Brew.create!(
        :name => "Name"
      ),
      Brew.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of brews" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
