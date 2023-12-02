import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../locale/cubit/locale_cubit.dart';

class DropdownButtonLocal extends StatelessWidget {
  const DropdownButtonLocal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(
      builder: (context, state) {
        if (state is ChangeLocaleState) {
          return DropdownButton<String>(
            dropdownColor: Colors.amber,
            focusColor: Colors.red,
            borderRadius: BorderRadius.circular(12),
            value: state.locale.languageCode,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: ["ar", 'en'].map((String Item) {
              return DropdownMenuItem<String>(
                value: Item,
                child: Text(Item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                // BlocProvider.of<LocaleCubit>(context)
                //     .changeLanguage(newValue);
                context.read<LocaleCubit>().changeLanguage(newValue);
              }
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}
