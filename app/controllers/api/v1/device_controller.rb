module Api
  module V1
    class DeviceController < ApplicationController
      respond_to :json

      def push_notification
        registration_ids = User.all.map(&:registration_id)
        notification = RubyPushNotifications::GCM::GCMNotification.new registration_ids, { text: 'Hello GCM World!' }
        pusher = RubyPushNotifications::GCM::GCMPusher.new "AIzaSyBBsmB_7rfYAlQThbwe4SogTGYvS2wKK18"
        pusher.push [notification]
        p 'Notification sending results:'
        p "Success: #{notification.success}, Failed: #{notification.failed}"
        p 'Details:'
        p notification.individual_results
      end

      def send_status
        user = User.where(registration_id: params[:registration_id]).first
        if user
           user.first
        end
      end
    end
  end
end

