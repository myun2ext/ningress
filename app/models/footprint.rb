class Footprint < ActiveRecord::Base
  belongs_to :user

  def log!
    self.logs = (logs || "") + logging_text
    save!
  end

  private
  def logging_text
    <<-TEXT
#{location} at #{I18n.l updated_at}. (location: #{longitude}, #{latitude})
    TEXT
  end
end
