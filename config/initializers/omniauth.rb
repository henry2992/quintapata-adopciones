Rails.application.config.middleware.use OmniAuth::Builder do
 if Rails.env.development?
   provider :facebook, '370670703363428', 'e45c430497db6ccc194af86242e809a3',
     scope: 'email,public_profile,user_about_me,user_birthday,user_location, publish_actions ',
     info_fields: 'email,first_name,last_name,birthday,gender, link, locale, friends',
     display: 'popup', :image_size => 'large', :secure_image_url => true
 else
   provider :facebook, '1732514950389059', '12dfe3f652eb64c2ffb7622931f28816',
     scope: 'email,public_profile,user_about_me,user_birthday,user_location, publish_actions ',
     info_fields: 'email,first_name,last_name,birthday,gender, link, locale, friends',
     display: 'popup', :image_size => 'large', :secure_image_url => true
 end
end