module Jekyll
  module HeadingOffsetFilter
    def offset_headings(content, offset = 1)
      return content
      .gsub(/^(#+)/) { |match| '#' * [[match.size + offset, 6].min, 1].max }
    end
  end
end

Liquid::Template.register_filter(Jekyll::HeadingOffsetFilter)