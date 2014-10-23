# -*- encoding : utf-8 -*-
class Usuario < ActiveRecord::Base
  belongs_to :email
end
