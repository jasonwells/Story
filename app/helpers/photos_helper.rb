module PhotosHelper
  
  # Date taken attribution
  def taken_attribute(p)
    if p.date_taken
      att = "Taken #{p.date_taken.to_s(:long)}"
    else
      att = "Date Unknown"
    end
  end

end
