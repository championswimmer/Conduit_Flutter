
const BASE_URL = 'https://conduit.productionready.io/api';

final _httpHeaders = Map<String, String>();

set authToken (String token) {
  _httpHeaders['Authorization'] = 'Token $token';
}

get httpHeaders {
  return _httpHeaders;
}