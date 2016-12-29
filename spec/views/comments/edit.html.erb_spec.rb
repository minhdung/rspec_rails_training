require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :coment => "MyString",
      :post_id => 1,
      :username => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_coment[name=?]", "comment[coment]"

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "input#comment_username[name=?]", "comment[username]"
    end
  end
end
