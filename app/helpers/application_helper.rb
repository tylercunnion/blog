# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def time_element(time, options={})
    options = {
      # YYYY-MM-DDThh:mmTZD
      :attribute_format => '%Y-%m-%dT%H:%MZ',
      :text_format => '%B %e, %Y'
    }.merge(options)
    return '<time datetime="' + time.utc.strftime(options[:attribute_format]) + '">' + time.localtime.strftime(options[:text_format]) + '</time>'
  end
  
  def smart_header(content, level=1, html_options={})
    h_string = '<h' + level.to_s
    html_options.each {|key, value| h_string = h_string + ' ' + key + '="' + value + '"' }
    h_string = h_string + '>' + content + '</h' + level.to_s + '>'
    
    return h_string
  end
end
