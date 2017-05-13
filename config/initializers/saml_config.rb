SamlIdp.configure do |config|
  base = "http://7e0684e2.ngrok.io"

  config.x509_certificate =  <<-CERT
-----BEGIN CERTIFICATE-----
MIIELzCCAxegAwIBAgIUX0dbxwRFyrO5XZSHJuLx+TrkgYAwDQYJKoZIhvcNAQEF
BQAwYDELMAkGA1UEBhMCVVMxGDAWBgNVBAoMD1EzIFRlY2hub2xvZ2llczEVMBMG
A1UECwwMT25lTG9naW4gSWRQMSAwHgYDVQQDDBdPbmVMb2dpbiBBY2NvdW50IDEw
MzYwNTAeFw0xNzAzMjgwOTE2NTdaFw0yMjAzMjkwOTE2NTdaMGAxCzAJBgNVBAYT
AlVTMRgwFgYDVQQKDA9RMyBUZWNobm9sb2dpZXMxFTATBgNVBAsMDE9uZUxvZ2lu
IElkUDEgMB4GA1UEAwwXT25lTG9naW4gQWNjb3VudCAxMDM2MDUwggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDUD2GI6fIMkc+uY8QKhSDxYFkdho/cJmSs
pN3jjAlyAMxxqXcR6gp8vvF1O5h8UhS/uLWcj2wlnX8uWeaq6qzd7sDSPLIO0env
vW7E8lpUaLGgPsu76HqTq2HhsepAqBZoLA6vnsLZIUBySTz15o6UmU6DTNz0P0RX
jJxNSv0b6VkHCdO258qnKCuJbbJH7/BHu5MnQkbFv135uRwUhFfEYWsWgt1xHKVs
2DY0Rabn3zzt3S1QG5n1IqtbykyG4RVVj10tx43aQrtYBpC6WOzuGgv+TXbEMzOk
0ZIa6qAQcrgjJ9EADeOAxY/XZaPgoGHIyb0YiYoyBSVFlH33Ojq1AgMBAAGjgeAw
gd0wDAYDVR0TAQH/BAIwADAdBgNVHQ4EFgQUykZNOYpWkjj/mHoSBIw8j1ilIGMw
gZ0GA1UdIwSBlTCBkoAUykZNOYpWkjj/mHoSBIw8j1ilIGOhZKRiMGAxCzAJBgNV
BAYTAlVTMRgwFgYDVQQKDA9RMyBUZWNobm9sb2dpZXMxFTATBgNVBAsMDE9uZUxv
Z2luIElkUDEgMB4GA1UEAwwXT25lTG9naW4gQWNjb3VudCAxMDM2MDWCFF9HW8cE
RcqzuV2Uhybi8fk65IGAMA4GA1UdDwEB/wQEAwIHgDANBgkqhkiG9w0BAQUFAAOC
AQEASPLVUrcoutudQKwVc8ZZXD70vKh7vpId3tZe9XozMF+kDV/JGooGf3Rw1YQj
A+djx185qihBrUzjKD5XSZSVKMAn1j5TGSxuGFuX2r10LcxviZwFK023IzNWeoEE
O87dBuI4hHCCYJ/yPqKhN9nPYXFEuRQauKm9OMRvzJgYiNiY2AYKHLcwb1aqHSrJ
tif6Zmy/HA4z6ngRNf2UW0IPknKOBQKjLuZKxNB3ER5PqytBlsu4G2lcRRK3+CLB
3JPnWPzagYz13I83nDDJdheu+HxHLY4XqtvnRiF198EThNHMIaM8OZFmBJH7reyt
iXo5nMlThh9WCeGKpkrRzygSqQ==
-----END CERTIFICATE-----
  CERT

  config.secret_key = SamlIdp.config.secret_key

  # config.password = "secret_key_password"
  # config.algorithm = :sha256
  # config.organization_name = "Your Organization"
  # config.organization_url = "http://example.com"
  # config.base_saml_location = "#{base}/saml"
  # config.reference_id_generator                   # Default: -> { UUID.generate }
  # config.attribute_service_location = "#{base}/saml/attributes"
  # config.single_service_post_location = "#{base}/saml/auth"

  # Principal (e.g. User) is passed in when you `encode_response`
  #
  # config.name_id.formats # =>
  #   {                         # All 2.0
  #     email_address: -> (principal) { principal.email_address },
  #     transient: -> (principal) { principal.id },
  #     persistent: -> (p) { p.id },
  #   }
  #   OR
  #
  #   {
  #     "1.1" => {
  #       email_address: -> (principal) { principal.email_address },
  #     },* Version 3.8.2 (ruby 2.3.1-p112), codename: Sassy Salamander

  #     "2.0" => {
  #       transient: -> (principal) { principal.email_address },
  #       persistent: -> (p) { p.id },
  #     },
  #   }

  # If Principal responds to a method called `asserted_attributes`
  # the return value of that method will be used in lieu of the
  # attributes defined here in the global space. This allows for
  # per-user attribute definitions.
  #
  ## EXAMPLE **
  # class User
  #   def asserted_attributes
  #     {
  #       phone: { getter: :phone },
  #       email: {
  #         getter: :email,
  #         name_format: Saml::XML::Namespaces::Formats::NameId::EMAIL_ADDRESS,
  #         name_id_format: Saml::XML::Namespaces::Formats::NameId::EMAIL_ADDRESS
  #       }
  #     }
  #   end
  # end
  #
  # If you have a method called `asserted_attributes` in your Principal class,
  # there is no need to define it here in the config.

  # config.attributes # =>
  #   {
  #     <friendly_name> => {                                                  # required (ex "eduPersonAffiliation")
  #       "name" => <attrname>                                                # required (ex "urn:oid:1.3.6.1.4.1.5923.1.1.1.1")
  #       "name_format" => "urn:oasis:names:tc:SAML:2.0:attrname-format:uri", # not required
  #       "getter" => ->(principal) {                                         # not required
  #         principal.get_eduPersonAffiliation                                # If no "getter" defined, will try
  #       }                                                                   # `principal.eduPersonAffiliation`, or no values will
  #    }                                                                      # be output
  #
  ## EXAMPLE ##
  # config.attributes = {
  #   GivenName: {
  #     getter: :first_name,
  #   },
  #   SurName: {
  #     getter: :last_name,
  #   },
  # }
  ## EXAMPLE ##

  # config.technical_contact.company = "Example"
  # config.technical_contact.given_name = "Jonny"
  # config.technical_contact.sur_name = "Support"
  # config.technical_contact.telephone = "55555555555"
  # config.technical_contact.email_address = "example@example.com"

  service_providers = {
      "http://7e0684e2.ngrok.io/saml" => {
          fingerprint: "9E:65:2E:03:06:8D:80:F2:86:C7:6C:77:A1:D9:14:97:0A:4D:F4:4D",
          metadata_url: "http://7e0684e2.ngrok.io/saml/metadata"
      },
  }

  # `identifier` is the entity_id or issuer of the Service Provider,
  # settings is an IncomingMetadata object which has a to_h method that needs to be persisted
  config.service_provider.metadata_persister = ->(identifier, settings) {
    fname = identifier.to_s.gsub(/\/|:/,"_")
    `mkdir -p #{Rails.root.join("cache/saml/metadata")}`
    File.open Rails.root.join("cache/saml/metadata/#{fname}"), "r+b" do |f|
      Marshal.dump settings.to_h, f
    end
  }

  # `identifier` is the entity_id or issuer of the Service Provider,
  # `service_provider` is a ServiceProvider object. Based on the `identifier` or the
  # `service_provider` you should return the settings.to_h from above
  config.service_provider.persisted_metadata_getter = ->(identifier, service_provider){
    fname = identifier.to_s.gsub(/\/|:/,"_")
    `mkdir -p #{Rails.root.join("cache/saml/metadata")}`
    full_filename = Rails.root.join("cache/saml/metadata/#{fname}")
    if File.file?(full_filename)
      File.open full_filename, "rb" do |f|
        Marshal.load f
      end
    end
  }

  # Find ServiceProvider metadata_url and fingerprint based on our settings
  config.service_provider.finder = ->(issuer_or_entity_id) do
    service_providers[issuer_or_entity_id]
  end
end