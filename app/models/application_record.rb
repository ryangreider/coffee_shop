class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  class Product < ApplicationRecord
  end
  
end
