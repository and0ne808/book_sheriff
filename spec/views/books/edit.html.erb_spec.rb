require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :name => "MyString",
      :full_title => "MyString",
      :author => "MyString",
      :publisher => "MyString",
      :version => "9.99",
      :isbn => "MyString",
      :original_price => "MyString",
      :sale_price => "MyString",
      :cover_pic => "MyString",
      :tags => "MyString",
      :popularity => 1,
      :description => "MyText",
      :in_stock => 1,
      :style => "MyString",
      :publication_city => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_path(@book), "post" do
      assert_select "input#book_name[name=?]", "book[name]"
      assert_select "input#book_full_title[name=?]", "book[full_title]"
      assert_select "input#book_author[name=?]", "book[author]"
      assert_select "input#book_publisher[name=?]", "book[publisher]"
      assert_select "input#book_version[name=?]", "book[version]"
      assert_select "input#book_isbn[name=?]", "book[isbn]"
      assert_select "input#book_original_price[name=?]", "book[original_price]"
      assert_select "input#book_sale_price[name=?]", "book[sale_price]"
      assert_select "input#book_cover_pic[name=?]", "book[cover_pic]"
      assert_select "input#book_tags[name=?]", "book[tags]"
      assert_select "input#book_popularity[name=?]", "book[popularity]"
      assert_select "textarea#book_description[name=?]", "book[description]"
      assert_select "input#book_in_stock[name=?]", "book[in_stock]"
      assert_select "input#book_style[name=?]", "book[style]"
      assert_select "input#book_publication_city[name=?]", "book[publication_city]"
    end
  end
end
