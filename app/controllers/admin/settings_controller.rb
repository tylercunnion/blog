module Admin
  class SettingsController < AdminController
    
    def index
      @settings = Setting.find(:all)
    end
    
    def general
      @blog_config = Setting.find_by_name("general")
    end
    
    def update
      @setting = Setting.find_by_name(params[:setting][:name])
      @setting.config.each_key do |key|
        @setting.config[key] = params[:config][key]
      end
      
      if @setting.save
        flash[:notice] = 'Settings saved.'
        redirect_to admin_settings_url
      else
        render :action => @setting.name
      end       
      
    end
  
  end
end