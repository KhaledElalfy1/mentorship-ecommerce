class EndPoints {
  // base url
  static String baseUrl = "https://api.escuelajs.co/api/v1";
  static String featuredProducts = "/products/";

  static String recommendedProductsEndPoint({required int id}) => '/categories/$id/products';


  static String loginEndPoint = '/auth/login';
}

class ApiKeys {
  static String email = 'email';

  static String password = 'password';

  static String accessToken = 'access_token';

  static String refreshToken = 'refresh_token';
}
