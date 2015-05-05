module Spree
  module Admin
    class <%= class_name.pluralize %>Controller < ResourceController
      def index
        @search = @<%= plural_name %>.ransack(params[:q])
        @<%= plural_name %> = @search.result.
          page(params[:page]).
          per(params[:per_page])
      end
    end
  end
end
