require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :class_year => "Class Year",
        :message => "Message",
        :email => "Email"
      ),
      stub_model(Post,
        :class_year => "Class Year",
        :message => "Message",
        :email => "Email"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Class Year".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
