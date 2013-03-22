require 'spec_helper'

describe "demots/edit" do
  before(:each) do
    @demot = assign(:demot, stub_model(Demot,
      :title => "MyString",
      :votes_count => 1,
      :active => false,
      :user_id => 1
    ))
  end

  it "renders the edit demot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", demot_path(@demot), "post" do
      assert_select "input#demot_title[name=?]", "demot[title]"
      assert_select "input#demot_votes_count[name=?]", "demot[votes_count]"
      assert_select "input#demot_active[name=?]", "demot[active]"
      assert_select "input#demot_user_id[name=?]", "demot[user_id]"
    end
  end
end
