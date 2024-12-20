import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/bloc.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final usernameCubit = context.watch<UsernameCubit>();
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Cubit'),
      ),
      body: Center(
        child: BlocBuilder<UsernameCubit, String>(
          builder: (context, state) {
            print('cambio');
            return Text(state);
          },
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<UsernameCubit>().setUsername('fernando');
        
      },
      child: const Icon(Icons.refresh),
      ),
    );
  }
}