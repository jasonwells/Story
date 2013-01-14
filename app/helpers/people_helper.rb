module PeopleHelper
  
  # Gender image path
  def gender_image(p)
    "/assets/user_#{p.gender}.png"
  end
  
  # Returns birth date and place string
  def birth_info(p)
    if p.birth then
      ret = p.birth.to_s(:long)
      if p.birth_place != '' then
        ret = "#{ret} in #{p.birth_place}"
      end
    else
      ret = "Unknown"
    end
    ret
  end

  # Returns death date and place string
  def death_info(p)
    if p.death then 
      ret = p.death.to_s(:long)
      if p.death_place != '' then
        ret = "#{ret} in #{p.death_place}"
      end
    else
      ret = 'Unknown'
    end
    ret
  end
  
  # Style names
  def style_name(p)
    html = ""
    html = <<HTML
    #{p.first_name}
    #{p.middle_name}
    <span class="lastname">#{p.last_name}</span>
HTML
    html.html_safe
  end
end
