module ApplicationHelper
  include HtmlBuilder
  ## Jissen ruby on rails 4 -- P87
  def document_title
    if @title.present?
      "#{@title} - Baukis"
    else
      'Baukis'
    end
  end
end
