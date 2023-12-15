import 'package:coordonate_app/core/api/dio_client.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:coordonate_app/features/feed/data/datasources/posts_remote_datasource.dart';
import 'package:coordonate_app/features/feed/data/repositories/get_all_posts_repository_impl.dart';
import 'package:coordonate_app/features/feed/domain/repositories/get_all_posts_repository.dart';
import 'package:coordonate_app/features/feed/domain/usecases/get_all_posts.dart';
import 'package:coordonate_app/features/feed/presentation/bloc/feed/feed_bloc.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/auth.dart';
import 'utils/helper/pref_manager.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({bool isUnitTest = false}) async {
  /// For unit testing only
  if (isUnitTest) {
    WidgetsFlutterBinding.ensureInitialized();
    sl.reset();
    // ignore: invalid_use_of_visible_for_testing_member
    SharedPreferences.setMockInitialValues({});
    await SharedPreferences.getInstance().then((value) {
      initPrefManager(value);
    });
    sl.registerSingleton<DioClient>(DioClient(isUnitTest: true));
    dataSources();
    repositories();
    useCase();
    bloc();
  } else {
    sl.registerSingleton<DioClient>(DioClient());
    dataSources();
    repositories();
    useCase();
    bloc();
  }
}

// Register prefManager
void initPrefManager(SharedPreferences initPrefManager) {
  sl.registerLazySingleton<PrefManager>(() => PrefManager(initPrefManager));
}

/// Register repositories
void repositories() {
  ///Auth
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  ///Posts
  sl.registerLazySingleton<GetAllPostsRepository>(
      () => GetAllPostsRepositoryImpl(sl()));
}

/// Register dataSources
void dataSources() {
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(sl()),
  );

  sl.registerLazySingleton<PostRemoteDatasource>(
      () => PostRemoteDatasourceImpl(sl()));
}

void useCase() {
  /// Auth
  sl.registerLazySingleton(() => PostLogin(sl()));
  sl.registerLazySingleton(() => PostRegister(sl()));

  /// Posts
  sl.registerLazySingleton(() => GetAllPosts(sl()));
  // sl.registerLazySingleton(() => ForgotPassword(email: sl()));
  sl.registerLazySingleton(() => SendEmail(repository: sl()));
  sl.registerLazySingleton(() => VerifyOTP(repository: sl()));
  sl.registerLazySingleton(() => ResetPassword(repository: sl()));
}

void bloc() {
  sl.registerFactory(() => LoginBloc(postLogin: sl(), prefManager: sl()));
  sl.registerFactory(() =>
      RegisterBloc(postRegister: sl(), prefManager: sl(), postLogin: sl()));
  sl.registerFactory(() => FeedBloc(getAllPosts: sl()));
  sl.registerFactory(() => OTPBloc(sendEmail: sl()));
  sl.registerFactory(() => VerifyOTPBloc(verifyOTP: sl()));
  sl.registerFactory(() => ResetPasswordBloc(resetPassword: sl()));
}
