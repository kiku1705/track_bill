class Api::BaseController < ApplicationController
  respond_to :json
  order "created_at desc"
end