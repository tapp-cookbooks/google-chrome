maintainer       "Besol Soluciones S.L."
maintainer_email "pablo@besol.es"
license          "All rights reserved"
description      "Installs the Google Chrome web browser"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "google-chrome", "Installs the Google Chrome web browser"

%w(windows).each do |recipe_dependency|
  depends recipe_dependency
end

%w{windows}.each do |os|
  supports os
end

attribute 'google-chrome/msi_url',
  :display_name => 'Google Chrome MSI installer URL',
  :description => 'The URL for the MSI installer of Google Chrome to use',
  :type => 'string',
  :default => 'https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi'
