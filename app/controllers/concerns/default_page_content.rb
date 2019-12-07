module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_default_page_defaults
  end

  def set_default_page_defaults
    @page_title = "Devcamp Portfolio | My Portfolio Website"
    @seo_keywords = "Eneja Kingsley Ruby on Rails Projects"
  end
end

#seo stands for Search Engine Optimization