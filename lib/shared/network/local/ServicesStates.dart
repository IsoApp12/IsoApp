abstract class ServicesStates{}
class initialState extends ServicesStates{}
class ServicesgotoRegisterState extends ServicesStates{}

class ServicesRegisterLoadingState extends ServicesStates{}
class ServicesRegisterErrorState extends ServicesStates{}
class ServicesRegisterSuccessState extends ServicesStates{
  final String uId;
  ServicesRegisterSuccessState(this.uId) ;
}
class ServicesLoginLoadingState extends ServicesStates{}
class ServicesLoginErrorState extends ServicesStates{}
class ServicesLoginSuccessState extends ServicesStates{}
class ChangeCurrentIndexState extends ServicesStates{}
class ServicesCreateUserLoadingState extends ServicesStates{}
class ServicesCreateUserSuccessState extends ServicesStates{}
class ServicesCreateUserErrorState extends ServicesStates{}
class increased extends ServicesStates{}





