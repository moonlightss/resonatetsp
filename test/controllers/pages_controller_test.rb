require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  	test "should get university_ambassadors" do
    get :university_ambassadors
    assert_response :success
  	end
  	
  	test "should get about" do
   	get :about
   	assert_response :success
  	end

  	test "should get contact" do
   	get :contact
	end

	test "should get dse_chemistry" do
   	get :about
   	assert_response :success
  	end


