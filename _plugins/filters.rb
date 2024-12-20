module Jekyll
  module DateFilter
    require 'date'
    def last_modified_at_sort(collection)
      collection.sort_by do |el|
        Date.parse(el.data['last_modified_at'].to_s, '%d-%m-%Y')
      end
    end
  end
end
Liquid::Template.register_filter(Jekyll::DateFilter)
