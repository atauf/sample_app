require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	test "layout links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select "a[href=?]", root_path, count: 2    #rails is replacing "?" with root_path, and that there's two "root" links
		assert_select "a[href=?]", help_path			  #rails is replacing "?" with help_path
		assert_select "a[href=?]", about_path
		assert_select "a[href=?]", contact_path
		get contact_path
		assert_select "title", full_title("Contact")	  #flawed because full title could have typo and pass...adding to application_helper.test.rb
		get signup_path
		assert_select "title", full_title("Sign up")
	end
end
