require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :coment => "Coment",
      :post_id => 2,
      :username => "Username"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Coment/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Username/)
  end
end
