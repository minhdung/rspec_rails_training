require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :coment => "MyString",
      :post_id => 1,
      :username => "MyString"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_coment[name=?]", "comment[coment]"

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "input#comment_username[name=?]", "comment[username]"
    end
  end
end
