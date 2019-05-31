require 'rails_helper'

RSpec.describe "brews/show", type: :view do
  before(:each) do
    @brew = assign(:brew, Brew.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
