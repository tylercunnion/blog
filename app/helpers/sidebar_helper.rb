module SidebarHelper
  
  def linkify_twitter(text)
    text = text.gsub(/@(\w*)/, '<a href="http://twitter.com/\1">@\1</a>')
    text = text.gsub(/#(\w*)/, '<a href="http://twitter.com/search?q=%23\1">#\1</a>')
    
    return text
  end
end