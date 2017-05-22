class SamlIdpController < SamlIdp::IdpController
  def idp_authenticate(email, password) # not using params intentionally
    user = User.find_by_email(email)
    user
  end

  private :idp_authenticate

  def idp_make_saml_response(found_user) # not using params intentionally
    # NOTE encryption is optional
    # logger.info "----------- now i came here with found user=====#{found_user.inspect}========thidfasdfa=#{saml_request.inspect}---------------service provider =========-#{saml_request.service_provider.inspect}------------certificate#{saml_request.service_provider.cert.inspect}"
    encode_response found_user
  end
  private :idp_make_saml_response

  def idp_logout
    user = User.by_email(saml_request.name_id)
    user.logout
  end
  private :idp_logout

  def create_saml_request
    saml = SamlTool::ErbBuilder.build(
        template: saml_request_template,
        settings: request_settings
    )

    encoded_saml = SamlTool::Encoder.encode(saml)

    redirect_uri = SamlTool::Redirect.uri(
        to: request_settings.idp_sso_target_url,
        data: {
            'SAMLRequest' => encoded_saml
        }
    )
    redirect_to redirect_uri

  end

  def update
    @request_data = SamlTool::Decoder.decode(params['SAMLResponse'])
    @response_saml = SamlTool::ResponseReader.new(@request_data)
    @saml = SamlTool::Reader.new(@request_data, name_id: '//saml:NameID/text()')
    @response_valid = @response_saml.valid?
  end

  private
  def saml_request_template
    File.read File.expand_path('saml_idp/request.saml.erb', view_paths.first)
  end

  def request_settings
    @request_settings ||= SamlTool::Settings.new(
        assertion_consumer_service_url: 'https://github.com/orgs/TheOMNIonline/saml/consume',
        issuer:                         'https://github.com/orgs/TheOMNIonline',
        idp_sso_target_url:             'https://7f137080.ngrok.io/saml/auth',
        idp_cert_fingerprint:           '9E:65:2E:03:06:8D:80:F2:86:C7:6C:77:A1:D9:14:97:0A:4D:F4:4D',
        name_identifier_format:         'urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress',
        # Optional for most SAML IdPs
        authn_context:                  "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
    )
  end

end