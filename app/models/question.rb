class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :hashtag_questions, dependent: :destroy
  has_many :hashtags, through: :hashtag_questions

  validates :text, presence: true
  validates :text, length: { maximum: 255}

  after_save_commit :create_hashtags

  private

  def create_hashtags
    self.hashtags =
        "#{answer} #{text}".
            downcase.
            scan(Hashtag::REGEXP).
            uniq.
            map { |ht| Hashtag.find_or_create_by(text: ht.delete('#')) }
  end
end
