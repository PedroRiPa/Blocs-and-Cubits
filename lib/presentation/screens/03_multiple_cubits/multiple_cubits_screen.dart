import 'package:blocs_app/config/config.dart';
import 'package:blocs_app/presentation/blocs/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MultipleCubitScreen extends StatelessWidget {
  const MultipleCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final counterCubit = context.watch<COunterCubit>();
    final themeCubit =context.watch<ThemeCubit>();
    final userNameCubit = context.watch<UsernameCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple Cubits'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1,),

            IconButton(
              icon: 
              themeCubit.state.isDarkmode
              ? const Icon( Icons.light_mode_outlined, size: 100 )
              : const Icon( Icons.dark_mode_outlined, size: 100 ),
              
              onPressed: () {
                themeCubit.toggleTheme();
                
              },
            ),

            Text(userNameCubit.state, style: const TextStyle(fontSize: 25 )),

            TextButton.icon(
              icon: const Icon( Icons.add, size: 50,),
              label:  Text('${counterCubit.state}', style: const TextStyle(fontSize: 100)),
              onPressed: () {
                counterCubit.incrementBy(1);
              },
            ),
            
            const Spacer( flex: 2 ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon( Icons.refresh_rounded ),
        onPressed: () {
          userNameCubit.setUsername(
            RandomGenerator.getRandomName()
          );
        },
      ),
    );
  }
}