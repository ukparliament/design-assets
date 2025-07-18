module DesignSystemGem
	module Crumbs extend ActiveSupport::Concern
		included do
			before_action :create_crumb_container
		end

	  private

	  def create_crumb_container
	    @crumb = []
	  end
	end
end