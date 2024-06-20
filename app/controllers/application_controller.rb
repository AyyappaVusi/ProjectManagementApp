class ApplicationController < ActionController::Base
    
    def after_sign_in_path_for(resource)
        if resource.is_a?(Admin)
          admin_dashboard_path
          else
            list_index_url
          end
    end
    def after_sign_out_path_for(resource)
        root_path
    end
end
