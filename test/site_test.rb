# frozen_string_literal: true

require "minitest/autorun"

class SiteTest < Minitest::Test
  SITE_PATH = File.expand_path("../_site/index.html", __dir__)

  def setup
    assert File.exist?(SITE_PATH), "build the site before running this test"
    @html = File.read(SITE_PATH)
  end

  def test_homepage_contains_core_positioning
    assert_includes @html, "Juan Esparza"
    assert_includes @html, "Complex systems"
    assert_includes @html, "Technical advising"
    assert_includes @html, "Developer tooling"
  end

  def test_homepage_contains_complete_navigation_and_sections
    %w[story experience work conversation].each do |section|
      assert_includes @html, "##{section}"
      assert_includes @html, "id=\"#{section}\""
    end

    assert_includes @html, "Shopify"
    assert_includes @html, "LendingHome"
    assert_includes @html, "ModCloth"
    assert_includes @html, 'href="https://github.com/jjeb"'
    assert_includes @html, 'href="https://www.linkedin.com/in/juesparza/"'
  end

  def test_homepage_invites_a_conversation
    assert_includes @html, 'href="https://calendly.com/juanj-esparza/30-minutes" target="_blank" rel="noopener noreferrer"'
    assert_includes @html, "Schedule a conversation"
  end

  def test_homepage_has_basic_document_metadata
    assert_includes @html, "<title>"
    assert_includes @html, 'name="description"'
    assert_includes @html, 'name="viewport"'
  end
end
