# frozen_string_literal: true

require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  include ApplicationHelper

  attr_reader :request

  def test_init_map_from
    story = stories(:first)
    stories = Story.where(id: story.id)

    expected = [{
      lat: story.lat,
      lng: story.lng,
      body: "#{story.identifier}: #{story.body}",
      storyId: story.id
    }]

    match = init_map_from(stories).match(/\[.*\]/) || []
    assert_equal expected.to_json, match[0]
  end

  def test_nav_link
    expected =
      '<a class="col-sm-2 col-xs-4" href="/">' \
      '<span class="glyphicon glyphicon-test"></span>' \
      '&nbsp<span class="hidden-xs">test</span></a>'

    assert_equal expected, nav_link('test', root_path, :test)
  end

  def test_story_body_feed
    actual = story_body(stories(:first), query: nil)
    assert_equal '<p>This is my first test story.</p>', actual
  end

  def test_story_body_search
    actual = story_body(stories(:first), query: 'first test')
    assert_equal '<p>This is my <mark>first test</mark> story.</p>', actual
  end
end
