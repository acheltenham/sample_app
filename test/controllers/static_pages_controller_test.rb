require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
 
  test "should get root" do
    get root_path
    assert_select "title", "#{@base_title}"
    assert_response :success
  end
=begin  
  test "should get home" do
    get static_pages_home_url
    assert_select "title", "Home | #{@base_title}"
    assert_response :success
  end
=end
  test "should get help" do
    get help_path
    assert_select "title", "#{@base_title}"
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_select "title", "#{@base_title}"
    assert_response :success
  end
  
  test "should get contact" do
    get contact_path  
    assert_select "title", "#{@base_title}"
    assert_response :success
  end
  
end
