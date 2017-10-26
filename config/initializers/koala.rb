Koala.configure do |config|
  config.access_token = "EAAHRYsySSjgBAEv3XXYeUq00umuVRTJKfL8xZA73DUaYas46qFzzgUq2MPtROJFSmH4Lzxqi4ZAXQZCdbAbekX5H1flXRZCBn4hMHwo1KDIbQCsKHRMImNBDSNftR97FHSCiZBpJZCdETqIPz7gqP5zomYKaSoM5iwfnT638Ry1HuCeyZBq9yZCQlSyB7KIZBU1QZD"
  config.app_access_token = "511697245850168|Cab3GaKoyqugrAYKNISH7ee2UWE"
  config.app_id = "511697245850168"
  config.app_secret = "745c21d1e4f0f69bdc90b3fbc8de2b4b"
end

@user_graph = Koala::Facebook::API.new
