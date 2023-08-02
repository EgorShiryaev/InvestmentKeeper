import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/login_cubit/login_cubit.dart';
import '../../cubits/login_cubit/login_state.dart';
import '../loading_mask.dart';

class LoginLoadingMask extends StatelessWidget {
  const LoginLoadingMask({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final isVisibility = state is LoadingLoginState;
        return LoadingMask(isVisibility: isVisibility);
      },
    );
  }
}
