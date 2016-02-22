class Band < ActiveRecord::Base
	has_many :spotifies
	has_many :youtubes
	has_many :competitors
	belongs_to :user
end
