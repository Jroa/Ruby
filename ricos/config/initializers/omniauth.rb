Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'ay0PfvtEZ3TmZUpjL4RyAA', 'BgTvQwvogKwaBSHmvhaFMV48tIFMIDerj40403jlbEk'
  provider :facebook, '437318986317962','50ab5ed06e3da988daf09c2c6426ef5f'
end