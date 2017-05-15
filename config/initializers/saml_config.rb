# SamlIdp.configure do |config|
#   base = "https://075e6f2c.ngrok.io"
#
#   config.x509_certificate =  <<-CERT
# -----BEGIN CERTIFICATE-----
# MIIEJjCCAw6gAwIBAgIUNy00n3yriRugYw8TNCwn4aI38NYwDQYJKoZIhvcNAQEF
# BQAwXTELMAkGA1UEBhMCVVMxFTATBgNVBAoMDHEzdGVjaG5vbG9neTEVMBMGA1UE
# CwwMT25lTG9naW4gSWRQMSAwHgYDVQQDDBdPbmVMb2dpbiBBY2NvdW50IDEwNDc1
# MDAeFw0xNzA0MTIxMjI4MDJaFw0yMjA0MTMxMjI4MDJaMF0xCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKDAxxM3RlY2hub2xvZ3kxFTATBgNVBAsMDE9uZUxvZ2luIElkUDEg
# MB4GA1UEAwwXT25lTG9naW4gQWNjb3VudCAxMDQ3NTAwggEiMA0GCSqGSIb3DQEB
# AQUAA4IBDwAwggEKAoIBAQCvJAHOJ2X00/vO82NfgPeZctKOFrTJWpHFBGG7368k
# Wwn5e8ayKO1crFnyCwb7N2hfzSqFiqovyyzq5EuybWxatfjpeP+cRdF12SAgmG+Y
# sRoqH8lekP4ihJahditEIjdv1vKK7kT7guXv2NcV8pIRrXBEnHdox4M4xd+ixsP3
# SoYVzV4F7QwVKNBwDJVi8RBy4BN+MsQZp/02jntty5cThgap7uvBCGNaDnmgKbJA
# CuCfxexU1qpOFzzB9TC3+iuHQ3gZ7IEbfpFwOUjsz9tNTAoR5msc/n1sCwDDt3Nr
# O0AcmJyWYrqSRhhm8vBQMLxOMIV/3EwA39+s0Ip7PVkNAgMBAAGjgd0wgdowDAYD
# VR0TAQH/BAIwADAdBgNVHQ4EFgQUJju+l2iSuMf0KvQfsUVJztkZbBEwgZoGA1Ud
# IwSBkjCBj4AUJju+l2iSuMf0KvQfsUVJztkZbBGhYaRfMF0xCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKDAxxM3RlY2hub2xvZ3kxFTATBgNVBAsMDE9uZUxvZ2luIElkUDEg
# MB4GA1UEAwwXT25lTG9naW4gQWNjb3VudCAxMDQ3NTCCFDctNJ98q4kboGMPEzQs
# J+GiN/DWMA4GA1UdDwEB/wQEAwIHgDANBgkqhkiG9w0BAQUFAAOCAQEACFcw+iow
# 0+skVpvwVRGR5Y+LAT7isf/+EhtQzD81kHGl2y7dIBUyGlNIlqEpg1jbswrVGqnB
# WLxpI75xtJ/QGCMyvKHSFwwoqgCGm+K5aCg2vc/H+tc10EIAgkUcwFiVIpIwRMHT
# 5KXC0/axTPZB5+bh2xmg0UoKP0P4/kTdQE3WobnS9tKiq8/1iNIB7oM+vYdBVv5I
# JiOvAbvOd+Vuf61Aopt81m2F2u2mYMM+TkwXnQFFKDCuJfT407wiMX4f6pbPzPJm
# 0iLcLg78AkzMW9UYNCFUSkt766BFODH0Ua4w7fx6I0Cj/moQPlOqnQ9KawAH+IJM
# wXb6Q37KdpOUBA==
# -----END CERTIFICATE-----
#   CERT
#
#   config.secret_key = SamlIdp.config.secret_key
#
#   # config.password = "secret_key_password"
#   # config.algorithm = :sha256
#   # config.organization_name = "Your Organization"
#   # config.organization_url = "http://example.com"
#   # config.base_saml_location = "#{base}/saml"
#   # config.reference_id_generator                   # Default: -> { UUID.generate }
#   # config.attribute_service_location = "#{base}/saml/attributes"
#   # config.single_service_post_location = "#{base}/saml/auth"
#
#   # Principal (e.g. User) is passed in when you `encode_response`
#   #
#   # config.name_id.formats # =>
#   #   {                         # All 2.0
#   #     email_address: -> (principal) { principal.email_address },
#   #     transient: -> (principal) { principal.id },
#   #     persistent: -> (p) { p.id },
#   #   }
#   #   OR
#   #
#   #   {
#   #     "1.1" => {
#   #       email_address: -> (principal) { principal.email_address },
#   #     },* Version 3.8.2 (ruby 2.3.1-p112), codename: Sassy Salamander
#
#   #     "2.0" => {
#   #       transient: -> (principal) { principal.email_address },
#   #       persistent: -> (p) { p.id },
#   #     },
#   #   }
#
#   # If Principal responds to a method called `asserted_attributes`
#   # the return value of that method will be used in lieu of the
#   # attributes defined here in the global space. This allows for
#   # per-user attribute definitions.
#   #
#   ## EXAMPLE **
#   # class User
#   #   def asserted_attributes
#   #     {
#   #       phone: { getter: :phone },
#   #       email: {
#   #         getter: :email,
#   #         name_format: Saml::XML::Namespaces::Formats::NameId::EMAIL_ADDRESS,
#   #         name_id_format: Saml::XML::Namespaces::Formats::NameId::EMAIL_ADDRESS
#   #       }
#   #     }
#   #   end
#   # end
#   #
#   # If you have a method called `asserted_attributes` in your Principal class,
#   # there is no need to define it here in the config.
#
#   # config.attributes # =>
#   #   {
#   #     <friendly_name> => {                                                  # required (ex "eduPersonAffiliation")
#   #       "name" => <attrname>                                                # required (ex "urn:oid:1.3.6.1.4.1.5923.1.1.1.1")
#   #       "name_format" => "urn:oasis:names:tc:SAML:2.0:attrname-format:uri", # not required
#   #       "getter" => ->(principal) {                                         # not required
#   #         principal.get_eduPersonAffiliation                                # If no "getter" defined, will try
#   #       }                                                                   # `principal.eduPersonAffiliation`, or no values will
#   #    }                                                                      # be output
#   #
#   ## EXAMPLE ##
#   # config.attributes = {
#   #   GivenName: {
#   #     getter: :first_name,
#   #   },
#   #   SurName: {
#   #     getter: :last_name,
#   #   },
#   # }
#   ## EXAMPLE ##
#
#   # config.technical_contact.company = "Example"
#   # config.technical_contact.given_name = "Jonny"
#   # config.technical_contact.sur_name = "Support"
#   # config.technical_contact.telephone = "55555555555"
#   # config.technical_contact.email_address = "example@example.com"
#
#   service_providers = {
#       "http://7e0684e2.ngrok.io/saml" => {
#           fingerprint: "9E:65:2E:03:06:8D:80:F2:86:C7:6C:77:A1:D9:14:97:0A:4D:F4:4D",
#           metadata_url: "http://7e0684e2.ngrok.io/saml/metadata"
#       },
#   }
#
#   # `identifier` is the entity_id or issuer of the Service Provider,
#   # settings is an IncomingMetadata object which has a to_h method that needs to be persisted
#   config.service_provider.metadata_persister = ->(identifier, settings) {
#     fname = identifier.to_s.gsub(/\/|:/,"_")
#     `mkdir -p #{Rails.root.join("cache/saml/metadata")}`
#     File.open Rails.root.join("cache/saml/metadata/#{fname}"), "r+b" do |f|
#       Marshal.dump settings.to_h, f
#     end
#   }
#
#   # `identifier` is the entity_id or issuer of the Service Provider,
#   # `service_provider` is a ServiceProvider object. Based on the `identifier` or the
#   # `service_provider` you should return the settings.to_h from above
#   config.service_provider.persisted_metadata_getter = ->(identifier, service_provider){
#     fname = identifier.to_s.gsub(/\/|:/,"_")
#     `mkdir -p #{Rails.root.join("cache/saml/metadata")}`
#     full_filename = Rails.root.join("cache/saml/metadata/#{fname}")
#     if File.file?(full_filename)
#       File.open full_filename, "rb" do |f|
#         Marshal.load f
#       end
#     end
#   }
#
#   # Find ServiceProvider metadata_url and fingerprint based on our settings
#   config.service_provider.finder = ->(issuer_or_entity_id) do
#     service_providers[issuer_or_entity_id]
#   end
# end