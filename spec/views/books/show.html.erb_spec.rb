require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Full Title/)
    rendered.should match(/Author/)
    rendered.should match(/Publisher/)
    rendered.should match(/9.99/)
    rendered.should match(/Isbn/)
    rendered.should match(/Original Price/)
    rendered.should match(/Sale Price/)
    rendered.should match(/Cover Pic/)
    rendered.should match(/Tags/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
    rendered.should match(/Style/)
    rendered.should match(/Publication City/)
  end
end
