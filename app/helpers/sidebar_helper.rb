module SidebarHelper
  
  def linkify_twitter(text)
    text = text.gsub(/(\s|\A)@(\w*)/, '\1<a href="http://twitter.com/\2">@\2</a>')
    text = text.gsub(/(\s|\A)#(\w*)/, '\1<a href="http://twitter.com/search?q=%23\2">#\2</a>')
    text = text.gsub(/(\s|\A)(https?:\/\/[\S]*)/, '\1<a href="\2">\2</a>')
    return text
  end
end