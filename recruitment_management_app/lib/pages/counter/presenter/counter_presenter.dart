import 'package:recruitment_management_app/pages/counter/model/counter_viewmodel.dart';
import 'package:recruitment_management_app/pages/counter/views/counter_view.dart';

class CounterPresenter {
  void onButton1Clicked() {}
  set counterView(CounterView value) {}
}

class BasicCounterPresenter implements CounterPresenter {

  CounterViewModel _counterViewModel;
  CounterView _counterView;

  BasicCounterPresenter() {
    this._counterViewModel = new CounterViewModel(0);
    this._counterView = new CounterView();
  }

  @override
  void onButton1Clicked() {
    this._counterViewModel.counter++;
    this._counterView.refreshCounter(this._counterViewModel);
  }

  @override
  set counterView(CounterView value) {
    _counterView = value;
    this._counterView.refreshCounter(this._counterViewModel);
  }


}