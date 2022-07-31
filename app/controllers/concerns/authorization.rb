module Authorization
    extend ActiveSupport::Concern
  
    included do
      include Pundit
  
      rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
      private
  
      def user_not_authorized
        redirect_to(request.referer || root_path)
        #flash[:danger] = t 'global.flash.not_authorized'
      end
    end
  end