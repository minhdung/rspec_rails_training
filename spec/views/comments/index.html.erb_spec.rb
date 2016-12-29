require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :coment => "Coment",
        :post_id => 2,
        :username => "Username"
      ),
      Comment.create!(
        :coment => "Coment",
        :post_id => 2,
        :username => "Username"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => "Coment".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
  end
end
