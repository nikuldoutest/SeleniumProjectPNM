module GenericHelper

 def random_num
  return Random.new.rand(1...999)
 end

 def random_email_generator
  return "nikuldoutest+#{random_num}@gmail.com"
 end


end