class SignupsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    def create
        new_signup = Signup.create!(signup_params)
        render json: new_signup.activity, status: :created
    end

    private

    def signup_params
        params.permit(:camper_id, :activity_id,:time)
    end

    def record_invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
