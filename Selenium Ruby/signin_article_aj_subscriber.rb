require "test/unit"
require "rubygems"
gem "selenium-client"
require "selenium/client"

class signin ARTICLE AJ SUBSCRIBER web28 < Test::Unit::TestCase

  def setup
    @verification_errors = []
    @selenium = Selenium::Client::Driver.new \
      :host => "localhost",
      :port => 4444,
      :browser => "*chrome",
      :url => "http://www.architectsjournal.co.uk",
      :timeout_in_second => 60

    @selenium.start_new_browser_session
  end
  
  def teardown
    @selenium.close_current_browser_session
    assert_equal [], @verification_errors
  end
  
  def test_signin _a_r_t_i_c_l_e _a_j _s_u_b_s_c_r_i_b_e_r web28
    @selenium.open "news/daily-news/aedas-completes-hong-kong-skyscraper/8622456.article"
    assert !60.times{ break if (@selenium.is_text_present("") rescue false); sleep 1 }
    @selenium.type "id=SIemail", "mdhewitt@aol.com"
    @selenium.click "id=SubsLoginEmail"
    @selenium.wait_for_page_to_load "30000"
    @selenium.type "id=passWord", "samuel"
    @selenium.click "id=LoginButton"
    @selenium.wait_for_page_to_load "30000"
    begin
        assert @selenium.is_text_present("Aedas claims to improved the air quality to the car park levels by introducing planting around the building’s perimeter.")
    rescue Test::Unit::AssertionFailedError
        @verification_errors << $!
    end
    begin
        assert @selenium.is_element_present("css=div.formbox_sleeve > h2")
    rescue Test::Unit::AssertionFailedError
        @verification_errors << $!
    end
  end
end
