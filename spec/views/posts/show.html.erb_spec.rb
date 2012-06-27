require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :class_year => "Class Year",
      :message => "Message",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Class Year/)
    rendered.should match(/Message/)
    rendered.should match(/Email/)
  end
end
