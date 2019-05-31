require 'rails_helper'

RSpec.describe "brews/new", type: :view do
  before(:each) do
    assign(:brew, Brew.new(
      :name => "MyString"
    ))
  end

  it "renders new brew form" do
    render

    assert_select "form[action=?][method=?]", brews_path, "post" do

      assert_select "input[name=?]", "brew[name]"
    end
  end
end
