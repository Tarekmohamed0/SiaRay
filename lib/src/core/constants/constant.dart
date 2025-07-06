class Constant {
  static const String baseUrl = 'https://siaray.holylands.net/api';
  static const String loginEndpoint = '/user/auth/login';
  static const String token = '';
  static const String userCacheKey = 'cachedUser';
  static const String authTokenKey = 'auth_token';
  static const supabaseUrl = 'https://kehnastnwntyzztjhijd.supabase.co';
  static const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtlaG5hc3Rud250eXp6dGpoaWpkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEwMTA3ODksImV4cCI6MjA0NjU4Njc4OX0.qD__s9vDnRtxsxm5Uxbgx9-LWphPaz6Fp0htSWY036w';
  static const String forgotPasswordEndpoint = '/user/auth/forgot-password';
  static const String otpVerificationEndpoint = '/user/auth/verify-reset-code';
  static const String resetPasswordEndpoint = '/user/auth/reset-password';
  static const String getBatteries = '/user/battery';
  static const String getEnergyReadings = '/user/battery/energyreading';
  static const String getDevice = '/user/device';
  static const String toggleDevice = '/user/device/toggle';
  static const String subDevice = '/user/subdevices';
  static const String getSubDevice = '/user/subdevices';
  static const String addSubDevice = '/user/subdevices/addsubsubdevice';
  static const String addSubDeviceToDevicesHome =
      '/user/subdevices/updatesubsubdevicehasdevice';
  static const String toggelMode = "/user/device/togglemode";
  static const String getSubDeviceHome = '/user/subsubdevices';
  static const String notification = '/user/device/notoficatin';
  static const String updatePassword = '/user/auth/updatepassword';
  static const String logout = '/user/auth/logout';
  static const String updateProfile = '/user/auth/updateprofile';
}
