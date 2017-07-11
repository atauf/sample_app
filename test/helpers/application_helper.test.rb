require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
	test "full title helper" do
		assert_equal full_title,			FILL_IN		#Fill in to exactly what the full title should be
		assert_equal full_title("Help"),	FILL_IN		#Fill in to exactly what the full title should be
		assert_equal full_title("Sign up"), FILL_IN 	#Fill in to exactly what the full title should be
	end
end