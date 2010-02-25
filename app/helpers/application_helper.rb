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
end
