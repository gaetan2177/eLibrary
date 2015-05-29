class ArticleReadingList < ActiveRecord::Base
  belongs_to :article
  belongs_to :reading_list
end
