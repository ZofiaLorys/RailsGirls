class Entry < ApplicationRecord

    validates :contents, presence: true
   
    def blob 
        contents.truncate(20)
    end

end
