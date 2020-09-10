# frozen_string_literal: true
class Shop < ActiveRecord::Base
  include ShopifyApp::ShopSessionStorage

  serialize :scopes, Array

  def api_version
    ShopifyApp.configuration.api_version
  end
end
