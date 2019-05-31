require 'rails_helper'

RSpec.describe "brews/edit", type: :view do
  before(:each) do
    @brew = assign(:brew, Brew.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit brew form" do
    render

    assert_select "form[action=?][method=?]", brew_path(@brew), "post" do

      assert_select "input[name=?]", "brew[name]"
    end
  end
end
