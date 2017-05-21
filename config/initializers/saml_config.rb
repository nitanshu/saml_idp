SamlIdp.configure do |config|
  base = "https://4ebcb964.ngrok.io"

  config.x509_certificate = <<-CERT
-----BEGIN CERTIFICATE-----
MIID6TCCAtGgAwIBAgIJAPTBIH87zmSFMA0GCSqGSIb3DQEBCwUAMIGKMQswCQYD
VQQGEwJRMzEQMA4GA1UECAwHSGFyeWFuYTEQMA4GA1UEBwwHR3VyZ2FvbjEUMBIG
A1UECgwLUTMgSW5mb3RlY2gxEzARBgNVBAsMCk9wZW5Tb3VyY2UxCzAJBgNVBAMM
AlEzMR8wHQYJKoZIhvcNAQkBFhBhZG1pbkBxM3RlY2guY29tMB4XDTE3MDUxNjA2
MDE1N1oXDTI3MDUxNjA2MDE1N1owgYoxCzAJBgNVBAYTAlEzMRAwDgYDVQQIDAdI
YXJ5YW5hMRAwDgYDVQQHDAdHdXJnYW9uMRQwEgYDVQQKDAtRMyBJbmZvdGVjaDET
MBEGA1UECwwKT3BlblNvdXJjZTELMAkGA1UEAwwCUTMxHzAdBgkqhkiG9w0BCQEW
EGFkbWluQHEzdGVjaC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDBDrv//A+GV+jbnW9OIhRPM2i//gz5jnlRXMW4rxSKSnKWjxcURc7oRM284IZ2
y8jgAJoMoHJQeumMg0QxPwGxoYEHTLuK9ulisE3LAlJA1od0m/YSSyeY3ZrWXS0T
KR1Ehvi9jjzoecrPXdFGTQeeIIs+n/o3iMl8r+KSa0ykAuVW8HTQ4vBwATEQ6Kbt
xU1mxsOuTBb4RKkDZxoOJfLvkW+lv3eh1IlAMLy98xp9pFHnrfwZRL65m7fsUPh9
/gCSlm6nGDnSydEHXRJ1znHbf7+D3d+FNphTXX8F3pNOXbhcge1aSAbUtx1hl8tQ
RpYVIUVpyTZcceniAkQHljohAgMBAAGjUDBOMB0GA1UdDgQWBBTVWhOSWEpJY3P6
j8fiqCcfJzstTjAfBgNVHSMEGDAWgBTVWhOSWEpJY3P6j8fiqCcfJzstTjAMBgNV
HRMEBTADAQH/MA0GCSqGSIb3DQEBCwUAA4IBAQBDgy7ch6bCFYUNf5Jjqv3NCFqv
ouq3yYTmu0GBuuttJVp/s8of4mu6RpUZCrvq3UP6tkMrNEeqKcniM9rUs4tLDPJg
yZwh6gZFmDoXc4ODcSrdRfzASU1bh16AhIMp18fQ3PQupO+hjU25eDmgPAvB9L0T
uiTocsUvTx0K/Ri/fBtcIbTSqrRX80YZ/8JzgQGr1i0sSAX0l4/zm3dkrYLDD+/J
I0bwd4Z3kzBRXQETVHaLA30bD84LQLHNVJkybrfrOrLvfdsqjcmD16HF4nMFJeP7
K2Ab93tEkeO9NNbD3XRpOSSCxMMIuqgSMgm7WFuXVPmCQrIBsXJa/ziAPqdR
-----END CERTIFICATE-----
  CERT

  config.secret_key = <<-CERT
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDBDrv//A+GV+jb
nW9OIhRPM2i//gz5jnlRXMW4rxSKSnKWjxcURc7oRM284IZ2y8jgAJoMoHJQeumM
g0QxPwGxoYEHTLuK9ulisE3LAlJA1od0m/YSSyeY3ZrWXS0TKR1Ehvi9jjzoecrP
XdFGTQeeIIs+n/o3iMl8r+KSa0ykAuVW8HTQ4vBwATEQ6KbtxU1mxsOuTBb4RKkD
ZxoOJfLvkW+lv3eh1IlAMLy98xp9pFHnrfwZRL65m7fsUPh9/gCSlm6nGDnSydEH
XRJ1znHbf7+D3d+FNphTXX8F3pNOXbhcge1aSAbUtx1hl8tQRpYVIUVpyTZcceni
AkQHljohAgMBAAECggEADqY8k88fqnUPQWLv6EDjw6LGBxOTDnjGMetVQY9fgqLl
kREokiw96BgYeIWdDnSmOIEzL1QZeIvrHvNzAD2ktkLoFJK5BHF6AjgYnxf8/9iH
jMys3nR/e7UNI8kMO5D6HJIVW+ToMEfVoOigkbIUquYTStw+02n4yBJcofmsZiGE
XezSUs2V8AdGq+40ttTk4a9I3gXyATcsPoeLh1i/sSovRKM7mjM0QKcj7wKbItDe
KjQQRE5SyndvhRGJprVvMA7E9DGQPRSbJRIx9kuVd/Q5ry51091gSaN4K922/Z1e
8tRyJyK6coWykzgpHeXx54lj6CODNPGX9/2Q9YGvhQKBgQDlluXtPrbQfqgiW1vf
SNKTqjqHgUSxE48ykLrwPNXFbsSZe25LbHP9FZ+UlbUMpKiXnDEua0ccpPYINBiP
OGsrKAmWbGy4Z0UNzb8PVydI3OW8leJFepIFkGC1G7viUZpQzPGWQ9W1uITyVjER
GbJp5+mfJQ5/rD7iTWr2xSUuowKBgQDXRAVedZtUn+YSMvTi+ioUQalKrUUrj4Du
dVw3DZRiUvCKPpLYozCL97zvNv0iAVeDkfL5AU2f+xo7trl7HzfTb0nR2QqC+4/e
yEv0Xy2h/dhesaSnqqA9xVEEOMy7AjOLynxeHDfb/B4jYOt4yBqXe8Hyr6Cl4gpQ
pitAim0UawKBgQDctlsl3yNqfkhudvt0RRLDCGQp/limDtKb3s0HxMQRgDIaBrH6
ajF7PP1jnyQlGmpFDc+t+02quN8Y9dQiYy+LlnrZFDTUddrJsWCag8NtZYap7EFR
X8re9HQzx4ywvpgmU09wkJfzkYalXbzf3p9I9rz91GcCz/jIH3rT7qSXFwKBgCmM
JmEh39YIepZeoWdBk2ePeMZCBQywSNk9a4vwoggMLALyqtMHRDJvoVamTVsH2UU6
oSOwPbQ3+cs2rDv4PYUggKXw9xdqyEzeadKDoEIYxW8ZaEc4Jm9lqwpekB00ApDj
hvd/CMT7tzFq3mfUb1V3fGqDvUTnCMiiGcz+Kql7AoGAQ33ViWj7iLIEvTEK9F4Q
J13M7AUqHMg8i9AvQxEMiLC4uAsEEkK3hikXDMV3f4REcI9CQziiMiNZ/xt+qyWy
8x4Vsox7zLTJgvvOqsLEngYQpyfxajjKV0j1XlJGLk/rnYu7hCHaq4qcB07iwh1Y
1wLDT5MvQKfcF0Op/byKagk=
-----END PRIVATE KEY-----
  CERT
  # config.password = "secret_key_password"
  config.algorithm = :sha256
  # config.organization_name = "Your Organization"
  # config.organization_url = "http://example.com"
  config.base_saml_location = "#{base}/saml/metadata"
  # config.reference_id_generator                   # Default: -> { UUID.generate }
  # config.attribute_service_location = "#{base}/saml/attributes"
  config.single_service_post_location = "#{base}/saml/auth"

  # Principal (e.g. User) is passed in when you `encode_response`
  #
  config.name_id.formats = {                         # All 2.0
      email: -> (principal) { principal.email },
      transient: -> (principal) { principal.id },
      persistent: -> (p) { p.id },
    }
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
      "https://f15f8d7d.ngrok.io" => {
          fingerprint: "9E:65:2E:03:06:8D:80:F2:86:C7:6C:77:A1:D9:14:97:0A:4D:F4:4D",
          metadata_url: "https://f15f8d7d.ngrok.io/saml/metadata"
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