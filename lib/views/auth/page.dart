import 'package:conex_flutter_mvvm/utils/dialogs.dart';
import 'package:conex_flutter_mvvm/viewmodels/auth/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> {

  final formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.blue[50]!, Colors.purple[50]!],
          )
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  border: Border.all(color: Colors.grey),
                ),
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: formKey,
                  child: Column(
                    spacing: 12,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Conex',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("WTH is Conex? This is just a demo app"),

                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          label: Text('Email')
                        ),
                      ),
                      Consumer(
                        builder: (context, state, _) {
                          final viewModel = ref.watch(authViewModelStateNotifierProvider);
                          return TextFormField(
                            controller: password,
                            obscureText: viewModel.hidePassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              label: Text('Password'),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  ref.read(authViewModelStateNotifierProvider.notifier).togglePassword(!viewModel.hidePassword);
                                },
                                icon: Icon(viewModel.hidePassword ? Icons.visibility : Icons.visibility_off),
                              ),
                            ),
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (val) => val == null || val.isEmpty ? 'Password is required' : val.length < 6 ? 'Password must be at least 6 characters' : null,
                          );
                        }
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () async {
                            if (formKey.currentState?.validate() ?? false) {
                              showLoadingDialog(
                                context,
                                barrierDismissible: false,
                                content: Text('Signing Up')
                              );
                            }
                          },
                          child: Text('Register'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}