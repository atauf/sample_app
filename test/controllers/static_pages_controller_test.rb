require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup  # SETUP function is automatically ran before every test by default
  	@base_title = "Ruby on Rails Tutorial Sample App"  #for refactoring
  end

  test "should get root" do
  	get root_url
  	assert_response :success
  	assert_select "title", "#{@base_title}"
  end

  test "should get home" do
    get root_path  # Now just refer to home as root
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
  	get about_path
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
  	get contact_url  # contact_path would work too, but is best used for external links (emails, youtube links, etc.)
  	assert_response :success
  	assert_select "title", "Contact | #{@base_title}"
  end

end
