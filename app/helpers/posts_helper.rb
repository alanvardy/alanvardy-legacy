# frozen_string_literal: true

include ApplicationHelper

module PostsHelper
  def markdown_text(text)
    Redcarpet::Markdown.new(MarkdownRender, fenced_code_blocks: true, tables: true).render(text).html_safe
  end

  def active_tab(pages, title)
    if pages == title
      'nav-link bg-grey0'
    else
      'nav-link bg-grey1'
    end
  end
end
