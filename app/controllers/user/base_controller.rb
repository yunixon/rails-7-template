# frozen_string_literal: true

class User::BaseController < ApplicationController
  layout 'user'

  before_action :authenticate_user!
end
