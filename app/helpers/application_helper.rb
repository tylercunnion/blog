# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def time_element(time, options={}, html_attributes={})
    options = {
      # YYYY-MM-DDThh:mmTZD
      :attribute_format => '%Y-%m-%dT%H:%MZ',
      :text_format => '%B %e, %Y'
    }.merge(options)
    element_text = '<time datetime="' + time.utc.strftime(options[:attribute_format]) + '"'
    html_attributes.each do |key, value|
      element_text = element_text + " #{key}=\"#{value}\""
    end      
    return element_text + '>' + time.localtime.strftime(options[:text_format]) + '</time>'
  end
end
