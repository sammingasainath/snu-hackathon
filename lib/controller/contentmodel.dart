class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  // UnbordingContent(
  //     title: '''Mount Camera to Vehicle's Front''',
  //     image: './assets/car_camera.jpg',
  //     discription: "About 10% of the vehicles today contains a front camera. "
  //         "Whith the advancement of techonogy and the need for more safety, "
  //         "This percentage will  increase in the future. "),
  UnbordingContent(
      title: 'ERROR404',
      image: './assets/detect.jpg',
      discription: ""),
  // UnbordingContent(
  //     title: 'Visualize Data',
  //     image: './assets/map.png',
  //     discription:
  //         "Visualize the data collected from the camera and the sensors in the vehicle. "
  //         "This will help citizens and governments to make better decisions "
  //         "and improve the safety of the roads."),
];
