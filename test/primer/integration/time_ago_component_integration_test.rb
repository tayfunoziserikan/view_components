# frozen_string_literal: true

require "application_system_test_case"

class TimeAgoComponentIntegrationTest < ApplicationSystemTestCase
  def test_integration
    visit("/")

    assert_selector("time-ago", text: "")
  end
end
