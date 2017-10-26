OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 

  if Rails.env.development?
   provider :facebook, '1732514950389059', '12dfe3f652eb64c2ffb7622931f28816'
 else
   provider :facebook, '370670703363428', 'e45c430497db6ccc194af86242e809a3'
 end

end
