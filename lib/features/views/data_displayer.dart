import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqfilte_test/core/utils/setvice_locator.dart';
import 'package:sqfilte_test/features/views/widgets/data_item.dart';
import '../data/data_displayer_impl.dart';
import '../manager/data_displayer_cubit/data_displayer_cubit.dart';

class DataDisplayer extends StatelessWidget {
  const DataDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DataDisplayerCubit(getIt.get<DataDisplayerImpl>())..fetchAllData(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Api Call'),
          backgroundColor: Colors.tealAccent,
        ),
        body: BlocBuilder<DataDisplayerCubit, DataDisplayerState>(
          builder: (context, state) {
            if (state is DataDisplayerLoaded) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                width: double.infinity,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return DataItem(index: index, data: state.allData);
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 8,
                  ),
                  itemCount: state.allData.length,
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
