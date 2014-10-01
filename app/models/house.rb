class House < ActiveRecord::Base
  has_many :flocks
  has_many :daily_reports
end
