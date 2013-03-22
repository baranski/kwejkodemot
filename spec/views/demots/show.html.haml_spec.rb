require 'spec_helper'

describe "demots/show" do
  before(:each) do
    @demot = assign(:demot, stub_model(Demot,
      :title => "Title",
      :votes_count => 1,
      :active => false,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/2/)
  end
end
