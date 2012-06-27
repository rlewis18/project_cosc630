require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :class_year => "MyString",
      :message => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_class_year", :name => "post[class_year]"
      assert_select "input#post_message", :name => "post[message]"
      assert_select "input#post_email", :name => "post[email]"
    end
  end
end
