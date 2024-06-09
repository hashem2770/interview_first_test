import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqfilte_test/features/data/data_displayer_impl.dart';

import '../../../models/interview.dart';
part 'data_displayer_state.dart';

class DataDisplayerCubit extends Cubit<DataDisplayerState>{
  DataDisplayerCubit(this.dataDisplayerImpl):super(DataDisplayerInitial());

  DataDisplayerImpl dataDisplayerImpl;

Future<void> fetchAllData()async{
  List<Interview> result = await dataDisplayerImpl.fetchAllData();
  emit(DataDisplayerLoaded(result));
}

}