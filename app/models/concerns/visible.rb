module Visible
    extend ActiveSupport::Concern
  
    VALID_PROCESSING_STATUSES = ['new', 'edit', 'ready']
  
    included do
      validates :processing_status, inclusion: { in: VALID_PROCESSING_STATUSES }
    end
  
    class_methods do
      def public_count
        where(processing_status: 'ready').count
      end
    end
  

  end