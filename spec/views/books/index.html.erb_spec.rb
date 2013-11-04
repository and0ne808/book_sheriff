require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :name => "Name",
        :full_title => "Full Title",
        :author => "Author",
        :publisher => "Publisher",
        :version => "9.99",
        :isbn => "Isbn",
        :original_price => "Original Price",
        :sale_price => "Sale Price",
        :cover_pic => "Cover Pic",
        :tags => "Tags",
        :popularity => 1,
        :description => "MyText",
        :in_stock => 2,
        :style => "Style",
        :publication_city => "Publication City"
      ),
      stub_model(Book,
        :name => "Name",
        :full_title => "Full Title",
        :author => "Author",
        :publisher => "Publisher",
        :version => "9.99",
        :isbn => "Isbn",
        :original_price => "Original Price",
        :sale_price => "Sale Price",
        :cover_pic => "Cover Pic",
        :tags => "Tags",
        :popularity => 1,
        :description => "MyText",
        :in_stock => 2,
        :style => "Style",
        :publication_city => "Publication City"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => "Original Price".to_s, :count => 2
    assert_select "tr>td", :text => "Sale Price".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Pic".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    assert_select "tr>td", :text => "Publication City".to_s, :count => 2
  end
end
