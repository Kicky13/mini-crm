class APIConfig {
  //host
  static String host = 'http://10.15.2.121/prod/CRM/';
  //auth
  static String login = '${host}crmn/apis/Auth';
  //Cutomer
  static String downloadCustomer = '${host}crmn/apis/Customer/CustomerAll';
  //news
  static String news = '${host}crmn/apis/Dashboard/GetartikelLocal';
  //program
  static String program = '${host}crmn/apis/Distributor/GetdataProgramtheday';
}
