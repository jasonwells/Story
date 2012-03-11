module EventsHelper
  
# Event date attribution
def approx_attribute(e)
  att = "Related "
  if e.approximate
    att = "#{att} approximately"
  end
  att = "#{att} #{e.event_date.to_s(:long)}"
end

end
