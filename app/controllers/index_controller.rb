class IndexController < ApplicationController
  before_action :detect_devise_variant  # 何でも良い?? --- (1)

  def index
  end

  private
      def detect_devise_variant  # (1)と同じ名前
          case request.user_agent
          when /iPad/
              request.variant = :tablet
          when /iPhone/
              request.variant = :mobile
          end
      end
end
