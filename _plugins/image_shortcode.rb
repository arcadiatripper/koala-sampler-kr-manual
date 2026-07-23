module Jekyll
  class ImageTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @params = parse_params(markup)
    end

    def parse_params(markup)
      params = {}

    markup.scan(/(\w+)\s*=\s*["']([^"']*)["']/) do |key, value|
        params[key] = value
      end
      params
    end

    def render(context)
      baseurl = '/koala-sampler-kr-manual'
      image_folder = "#{baseurl}/assets/images/"

      filename = @params['link'] || ''
      alt_text = @params['alt'] || ''
      css_classes = @params['class'] || ''
      css_id = @params['id'] || ''

      if context['page']['collection'] == 'guide' && !filename.empty?
        tablet_path = "tablet/#{filename}"
        image_tag = "<figure class=\"guide-shot legacy-shot\">"
        image_tag += "<img src=\"#{image_folder}#{filename}\" alt=\"#{alt_text} — Phone 화면\" "
        image_tag += "data-device-image "
        image_tag += "data-phone-src=\"#{image_folder}#{filename}\" "
        image_tag += "data-tablet-src=\"#{image_folder}#{tablet_path}\" "
        image_tag += "data-phone-alt=\"#{alt_text} — Phone 화면\" "
        image_tag += "data-tablet-alt=\"#{alt_text} — Tablet 화면\" "
        image_tag += "loading=\"lazy\" decoding=\"async\"/>"
        image_tag += "</figure>"
      elsif context['page']['url'].include?('tablet') && !filename.empty?
       tablet_path = "tablet/#{filename}"
        image_tag = "<a href=\"#{image_folder}#{tablet_path}\" data-fancybox=\"gallery\" class=\"fancybox\">"
        image_tag += "<img src=\"#{image_folder}#{tablet_path}\" alt=\"#{alt_text}\" class=\"#{css_classes}\" id=\"#{css_id}\"/>"
        image_tag += "</a>"
      else
        css_classes = "img-phone"
        image_tag = "<a href=\"#{image_folder}#{filename}\" data-fancybox=\"gallery\" class=\"fancybox\">"
        image_tag += "<img src=\"#{image_folder}#{filename}\" alt=\"#{alt_text}\" class=\"#{css_classes}\" id=\"#{css_id}\"/>"
        image_tag += "</a>"
      end

      image_tag
    end
  end
end

Liquid::Template.register_tag('flexible_image', Jekyll::ImageTag)
