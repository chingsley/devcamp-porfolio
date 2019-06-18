module PagesHelper
  def twitter_parser tweet
    regex = %r{\b(?:https?:\/\/)?(?i)[a-z][a-z0-9_-]*(?:[.\/](?!http)[a-z0-9_-]+)+\/?(?:\?[^\s,.]+)?}ix

    # gsub is a method in rails called 'global substitution'
    tweet.gsub(regex) do |url|
      "<a href='#{url}' target='_blank'>#{url}</a>"
    end.html_safe

  end
end
