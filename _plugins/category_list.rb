# encoding: utf-8
# Category list tag
# Source: https://gist.github.com/1144723
# Modified the generated a href to reflect our situation

module Jekyll
  class CategoryListTag < Liquid::Tag
    def render(context)
      html = ""
      categories = context.registers[:site].categories.keys
      categories.sort.each do |category|
        posts_in_category = context.registers[:site].categories[category].size
        category_lower = category.downcase.gsub(/\s/, '_').gsub(/[éè]/, 'e')
        html << "<li class='category'><a href='/categorie/#{category_lower}/'>#{category} (#{posts_in_category})</a></li>\n"
      end
      html
    end
  end
end

Liquid::Template.register_tag('category_list', Jekyll::CategoryListTag)