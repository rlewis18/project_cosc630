require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :class_year => "MyString",
      :message => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_class_year", :name => "post[class_year]"
      assert_select "input#post_message", :name => "post[message]"
      assert_select "input#post_email", :name => "post[email]"
    end
  end
end
