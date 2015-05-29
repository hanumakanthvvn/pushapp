module Api
  module V1
    class TimesheetsController < ApplicationController
      respond_to :json

      def index
        respond_with Timesheet.all
      end

      def show
        respond_with Timesheet.find(params[:id])
      end

      def create
        respond_with Timesheet.create(params[:timesheet])
      end

      def update
        respond_with Timesheet.update(params[:id], params[:timesheets])
      end

      def destroy
        respond_with Timesheet.destroy(params[:id])
      end
    end
  end
end
