# If the configuration sets `open_external_links_in_new_tab` to a truthy value,
# add 'target=_blank' to anchor tags that don't have `internal-link` class

# frozen_string_literal: true
require 'nokogiri'

Jekyll::Hooks.register [:notes], :post_convert do |doc|
  convert_links(doc)
end

Jekyll::Hooks.register [:pages], :post_convert do |doc|
  # jekyll considers anything at the root as a page,
  # we only want to consider actual pages
  next unless doc.path.start_with?('_pages/')
  convert_links(doc)
end

def convert_links(doc)
  open_external_links_in_new_tab = !!doc.site.config["open_external_links_in_new_tab"]

  if open_external_links_in_new_tab
    parsed_doc = Nokogiri::HTML(doc.content)
    parsed_doc.css("a:not(.footnote-backref):not(.internal-link)").each do |link|
      link.set_attribute('target', '_blank')
    end

    parsed_doc.css("sup.footnote-ref a").each do |link|
      link.remove_attribute('target')
    end
    doc.content = parsed_doc.to_html
  end
end
