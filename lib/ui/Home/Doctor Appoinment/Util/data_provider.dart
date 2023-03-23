import '../Model/lms_model.dart';

List<LMSModel> maanGetChatList() {
  List<LMSModel> list = [];
  list.add(LMSModel(
      title: 'John Wick',
      subTitle: 'hello',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.9.jpg"));
  list.add(LMSModel(
      title: 'Bella Hadid',
      subTitle: 'How ypu doing?',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.2.jpg"));
  list.add(LMSModel(
      title: 'Cristin',
      subTitle: 'About what Course?',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.1.jpg"));
  list.add(LMSModel(
      title: 'Chris Hameshorth',
      subTitle: 'hello',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.3.jpg"));
  list.add(LMSModel(
      title: 'Eliyahou Amoyelle',
      subTitle: 'How ypu doing?',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.4.jpg"));
  list.add(LMSModel(
      title: 'Izzy Sruly',
      subTitle: 'About what Course?',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.6.jpg"));
  list.add(LMSModel(
      title: 'Tom Holland',
      subTitle: 'hello',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.5.jpg"));
  list.add(LMSModel(
      title: 'Salma Hayek',
      subTitle: 'How ypu doing?',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.7.jpg"));
  list.add(LMSModel(
      title: 'Nora fatehi',
      subTitle: 'About what Course?',
      image:
          "https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.8.jpg"));
  return list;
}

List<LMSInboxData> maanInboxChatDataList() {
  List<LMSInboxData> list = [];
  list.add(LMSInboxData(id: 0, message: 'iya dok saya mual juga'));
  list.add(LMSInboxData(id: 1, message: 'Apakah ada mual?'));
  list.add(LMSInboxData(id: 1, message: 'Apakah Susah Tidur?'));
  list.add(LMSInboxData(id: 0, message: 'Sedikit Meriang'));
  list.add(LMSInboxData(id: 0, message: 'Saya Merasa Pusing Sekali'));
  list.add(LMSInboxData(id: 0, message: 'Halo Dr Yusril'));
  list.add(LMSInboxData(id: 1, message: 'Apa yang saat ini anda keluhkan?'));
  return list;
}
