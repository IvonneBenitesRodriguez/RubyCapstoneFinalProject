require 'date'
class Item
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end
  
  end

  def move_to_archive
    return unless can_be_archived?

    @archived = true
  end

  def can_be_archived?
    ten_years_ago = Date.today - (10 * 365)
    publish_date < ten_years_ago
  end
end

