class Bookmark < ActiveRecord::Base
    
    validates :URL, :length => { :minimum => 10 },
              :presence => true
    validates :name, :length => { :maximum => 100 },
              :presence => true
    
end
