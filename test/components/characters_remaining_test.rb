# frozen_string_literal: true

require "test_helper"

class PrimerCharactersRemainingComponentTest < Minitest::Test
  include Primer::ComponentTestHelpers

  def test_renders_content
    render_inline(Primer::CharactersRemainingComponent.new) do
      "content"
    end

    assert_text("content")
  end

  def test_renders_custom_element
    render_inline(Primer::CharactersRemainingComponent.new) do
      "content"
    end

    assert_selector("characters-remaining")
  end

  def test_status
    assert_equal Primer::CharactersRemainingComponent.status, Primer::Component::STATUSES[:experimental]
  end
end
