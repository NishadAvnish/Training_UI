class ExerciseModel {
  final String name,
      level,
      requiredEquip,
      description,
      primaryMuscle,
      secondaryMuscle,
      imagePath;

  ExerciseModel(
      {this.name,
      this.level,
      this.requiredEquip,
      this.description,
      this.primaryMuscle,
      this.secondaryMuscle,
      this.imagePath});
}

List<ExerciseModel> exercises = [
  ExerciseModel(
      name: "Bench Press",
      level: "Beginner",
      description:
          '''Lie on your back on a flat bench. Keep your buttocks in contact with the bench and your feet flat on the floor. \n\n  Take an overhand grip on the barbell with your hands more than shoulder-.width apart. \n \n Inhale and slowly lower the barbell until it reaches your chest. \n\n  Press the weight back up, exhaling as you complete movement.''',
      requiredEquip: "Barbell, Bench",
      primaryMuscle: "chest",
      secondaryMuscle: "Shoulder, Triceps",
      imagePath: "assets/images/benchpress.jpg"),
  ExerciseModel(
      name: "One-Arm Dumbbell Rows",
      level: "Beginner",
      description:
          "Grasp the dumbbell with your palm facing in. Rest the oppsite hand and knee on a bench. \n\n Steady your upper body in position, inhale and pull the dumbbell as high as possible, keeping your elbow back. \n\n Be sure your upper arm travels a little away from your torso. \n\n Exhale as you complete movement.",
      requiredEquip: "Dumbbell, Bench",
      primaryMuscle: "Upper Back",
      secondaryMuscle: "Shoulder, Biceps, Abs, Lats",
      imagePath: "assets/images/onearm_dumbbell.jpg"),
  ExerciseModel(
      name: "Push Down",
      level: "Beginner",
      description:
          "Standing facing the machine with your hands on the bar and your elbows against your sides. \n\nInhale and straighten your arms, but don’t separate your elbowa from your sides. \n\n Press the weight back up, exhaling as you complete movement.",
      requiredEquip: "Cable Machine",
      primaryMuscle: "Triceps",
      secondaryMuscle: "",
      imagePath: "assets/images/push_down.jpg"),
  ExerciseModel(
      name: "Machine Hip Extension",
      level: "Beginner",
      description:
          "Grasp the hndles of the machines, place one foot on the footplate. \n\n Inhale and move your thigh to the rear until your hip is fully extended backward (hyperextension). \n\n Press the weight back up, exhaling as you complete extension.",
      requiredEquip: "Machine",
      primaryMuscle: "Buttocks",
      secondaryMuscle: "Abbductors",
      imagePath: "assets/images/machine.jpg"),
  ExerciseModel(
      name: "Standing Barbell Calf Raises",
      level: "Beginner",
      description:
          "Stands with your back straight. Place your shoulders under the pads of the yoke. Place your toes and the balls of your feet on the toe block and lower your heels. \n\n Rise up high as you can on your toes while keeping your knees extended \n\n Returns t the starting position.",
      requiredEquip: "Barbell",
      primaryMuscle: "Calf",
      secondaryMuscle: "",
      imagePath: "assets/images/calf.jpg"),

  ExerciseModel(
      name: "Bench Press",
      level: "Beginner",
      description:
          '''Lie on your back on a flat bench. Keep your buttocks in contact with the bench and your feet flat on the floor \n\n Take an overhand grip on the barbell with your hands more than shoulder-.width apart. \n\n Inhale and slowly lower the barbell until it reaches your chest. \n\n Press the weight back up, exhaling as you complete movement.''',
      requiredEquip: "Barbell, Bench",
      primaryMuscle: "chest",
      secondaryMuscle: "Shoulder, Triceps",
      imagePath: "assets/images/benchpress.jpg"),
  ExerciseModel(
      name: "One-Arm Dumbbell Rows",
      level: "Beginner",
      description:
          "Grasp the dumbbell with your palm facing in. Rest the oppsite hand and knee on a bench. \n\n Steady your upper body in position, inhale and pull the dumbbell as high as possible, keeping your elbow back. \n\n Be sure your upper arm travels a little away from your torso. \n\n Exhale as you complete movement.",
      requiredEquip: "Dumbbell, Bench",
      primaryMuscle: "Upper Back",
      secondaryMuscle: "Shoulder, Biceps, Abs, Lats",
      imagePath: "assets/images/onearm_dumbbell.jpg"),
  ExerciseModel(
      name: "Push Down",
      level: "Beginner",
      description:
          "Standing facing the machine with your hands on the bar and your elbows against your sides. \n\nInhale and straighten your arms, but don’t separate your elbowa from your sides. \n\n Press the weight back up, exhaling as you complete movement.",
      requiredEquip: "Cable Machine",
      primaryMuscle: "Triceps",
      secondaryMuscle: "",
      imagePath: "assets/images/push_down.jpg"),
  ExerciseModel(
      name: "Machine Hip Extension",
      level: "Beginner",
      description:
          "Grasp the hndles of the machines, place one foot on the footplate. \n\n Inhale and move your thigh to the rear until your hip is fully extended backward (hyperextension).\n\n Press the weight back up, exhaling as you complete extension.",
      requiredEquip: "Machine",
      primaryMuscle: "Buttocks",
      secondaryMuscle: "Abbductors",
      imagePath: "assets/images/machine.jpg"),
  ExerciseModel(
      name: "Standing Barbell Calf Raises",
      level: "Beginner",
      description:
          "Stands with your back straight. Place your shoulders under the pads of the yoke. Place your toes and the balls of your feet on the toe block and lower your heels.\n\n Rise up high as you can on your toes while keeping your knees extended \n\nReturns t the starting position.",
      requiredEquip: "Barbell",
      primaryMuscle: "Calf",
      secondaryMuscle: "",
      imagePath: "assets/images/calf.jpg"),
  ExerciseModel(
      name: "Standing Dumbbell Curl",
      level: "Beginner",
      description:
          "Stand ewith holding a dumbbell in each hand with your palms facing towards.\n\n Inhale and raise one arm at a time, turning  the palm up.\n\nRaise your elbows to continue curling the dumbbell",
      requiredEquip: "Dumbbell",
      primaryMuscle: "Biceps",
      secondaryMuscle: "Forearm",
      imagePath: "assets/images/standing_dumbbell.jpg")
];
