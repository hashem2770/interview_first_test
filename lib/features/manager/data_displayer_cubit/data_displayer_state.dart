part of 'data_displayer_cubit.dart';

abstract class DataDisplayerState {
  const DataDisplayerState();
}

class DataDisplayerInitial extends DataDisplayerState{

}
class DataDisplayerLoaded extends DataDisplayerState{
  final List<Interview> allData;

  DataDisplayerLoaded(this.allData);


}
