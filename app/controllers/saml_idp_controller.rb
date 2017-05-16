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
end