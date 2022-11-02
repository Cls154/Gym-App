-- Up

CREATE TABLE Equipment (
  equipment_id INTEGER PRIMARY KEY,
  equipment TEXT NOT NULL UNIQUE
);

CREATE TABLE BodyParts (
  bodyPart_id INTEGER PRIMARY KEY,
  bodyPart TEXT NOT NULL UNIQUE
);

CREATE TABLE TargetMuscles (
  target_id INTEGER PRIMARY KEY,
  target TEXT NOT NULL UNIQUE
);

CREATE TABLE Exercises (
  bodyPart_id INTEGER REFERENCES BodyParts(bodyPart_id) NOT NULL,
  equipment_id INTEGER REFERENCES Equipment(equipment_id) NOT NULL,
  gifUrl TEXT NOT NULL,
  id TEXT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  target_id INTEGER REFERENCES TargetMuscles(target_id) NOT NULL
);

INSERT INTO Equipment (equipment_id, equipment) VALUES
(0, "assisted"),
(1, "band"),
(2, "barbell"),
(3, "body weight"),
(4, "bosu ball"),
(5, "cable"),
(6, "dumbbell"),
(7, "elliptical machine"),
(8, "ez barbell"),
(9, "hammer"),
(10, "kettlebell"),
(11, "leverage machine"),
(12,"medicine ball"),
(13, "olympic barbell"),
(14, "resistance band"),
(15,"roller"),
(16,"rope"),
(17, "skierg machine"),
(18, "sled machine"),
(19, "smith machine"),
(20, "stability ball"),
(21, "stationary bike"),
(22, "stepmill machine"),
(23, "tire"),
(24, "trap bar"),
(25, "upper body ergometer"),
(26, "weighted"),
(27, "wheel roller");

INSERT INTO BodyParts (bodyPart_id, bodyPart) VALUES
(0, "back"),
(1, "cardio"),
(2, "chest"),
(3, "lower arms"),
(4, "lower legs"),
(5, "neck"),
(6, "shoulders"),
(7, "upper arms"),
(8, "upper legs"),
(9, "waist");

INSERT INTO TargetMuscles (target_id, target) VALUES
(0, "abductors"),
(1, "abs"),
(2, "adductors"),
(3, "biceps"),
(4, "calves"),
(5, "cardiovascular system"),
(6, "delts"),
(7, "forearms"),
(8, "glutes"),
(9, "hamstrings"),
(10, "lats"),
(11, "levator scapulae"),
(12, "pectorals"),
(13, "quads"),
(14, "serratus anterior"),
(15, "spine"),
(16, "traps"),
(17, "triceps"),
(18, "upper back");


INSERT INTO Exercises (bodyPart_id, equipment_id, gifUrl, id, name, target_id) VALUES
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0001.gif",
  "0001",
  "3/4 sit-up",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0002.gif",
  "0002",
  "45° side bend",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0003.gif",
  "0003",
  "air bike",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1512.gif",
  "1512",
  "all fours squad stretch",
  13
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0006.gif",
  "0006",
  "alternate heel touchers",
  1
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0007.gif",
  "0007",
  "alternate lateral pulldown",
  10
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1368.gif",
  "1368",
  "ankle circles",
  4
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3293.gif",
  "3293",
  "archer pull up",
  10
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3294.gif",
  "3294",
  "archer push up",
  12
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2355.gif",
  "2355",
  "arm slingers hanging bent knee legs",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2333.gif",
  "2333",
  "arm slingers hanging straight legs",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3214.gif",
  "3214",
  "arms apart circular toe touch(male)",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3204.gif",
  "3204",
  "arms overhead full sit-up(male)",
  1
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0009.gif",
  "0009",
  "assisted chest dip(kneeling)",
  12
),
(
  9,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/0011.gif",
  "0011",
  "assisted hanging knee raise",
  1
),
(
  9,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/0010.gif",
  "0010",
  "assisted hanging knee raise with throw down",
  1
),
(
  4,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1708.gif",
  "1708",
  "assisted lying calves stretch",
  4
),
(
  8,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1709.gif",
  "1709",
  "assisted lying glutes stretch",
  8
),
(
  8,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1710.gif",
  "1710",
  "assisted lying gluteus and piriformis stretch",
  8
),
(
  9,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/0012.gif",
  "0012",
  "assisted lying leg raise with lateral throw down",
  1
),
(
  9,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/0013.gif",
  "0013",
  "assisted lying leg raise with throw down",
  1
),
(
  9,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/0014.gif",
  "0014",
  "assisted motion russian twist",
  1
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0015.gif",
  "0015",
  "assisted parallel close grip pull-up",
  10
),
(
  8,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/0016.gif",
  "0016",
  "assisted prone hamstring",
  9
),
(
  8,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1713.gif",
  "1713",
  "assisted prone lying quads stretch",
  13
),
(
  9,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1714.gif",
  "1714",
  "assisted prone rectus femoris stretch",
  1
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0017.gif",
  "0017",
  "assisted pull-up",
  10
),
(
  2,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1716.gif",
  "1716",
  "assisted seated pectoralis major stretch with stability ball",
  12
),
(
  8,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1712.gif",
  "1712",
  "assisted side lying adductor stretch",
  2
),
(
  9,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1758.gif",
  "1758",
  "assisted sit-up",
  1
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1431.gif",
  "1431",
  "assisted standing chin-up",
  10
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1432.gif",
  "1432",
  "assisted standing pull-up",
  10
),
(
  7,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/0018.gif",
  "0018",
  "assisted standing triceps extension(with towel)",
  17
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0019.gif",
  "0019",
  "assisted triceps dip(kneeling)",
  17
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2364.gif",
  "2364",
  "assisted wide-grip chest dip(kneeling)",
  12
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3220.gif",
  "3220",
  "astride jumps(male)",
  5
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3672.gif",
  "3672",
  "back and forth step",
  5
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1314.gif",
  "1314",
  "back extension on exercise ball",
  15
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3297.gif",
  "3297",
  "back lever",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1405.gif",
  "1405",
  "back pec stretch",
  10
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1473.gif",
  "1473",
  "backward jump",
  13
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0020.gif",
  "0020",
  "balance board",
  13
),
(
  7,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0968.gif",
  "0968",
  "band alternating biceps curl",
  3
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0969.gif",
  "0969",
  "band alternating v-up",
  1
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0970.gif",
  "0970",
  "band assisted pull-up",
  10
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0971.gif",
  "0971",
  "band assisted wheel rollerout",
  1
),
(
  2,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1254.gif",
  "1254",
  "band bench press",
  12
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0980.gif",
  "0980",
  "band bent-over hip extension",
  8
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0972.gif",
  "0972",
  "band bicycle crunch",
  1
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0974.gif",
  "0974",
  "band close-grip pulldown",
  10
),
(
  7,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0975.gif",
  "0975",
  "band close-grip push-up",
  17
),
(
  7,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0976.gif",
  "0976",
  "band concentration curl",
  3
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/3117.gif",
  "3117",
  "band fixed back close grip pulldown",
  10
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/3116.gif",
  "3116",
  "band fixed back underhand pulldown",
  10
),
(
  6,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0977.gif",
  "0977",
  "band front lateral raise",
  6
),
(
  6,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0978.gif",
  "0978",
  "band front raise",
  6
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1408.gif",
  "1408",
  "band hip lift",
  8
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0979.gif",
  "0979",
  "band horizontal pallof press",
  1
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0981.gif",
  "0981",
  "band jack knife sit-up",
  1
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0983.gif",
  "0983",
  "band kneeling one arm pulldown",
  10
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0985.gif",
  "0985",
  "band kneeling twisting crunch",
  1
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0984.gif",
  "0984",
  "band lying hip internal rotation",
  8
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1002.gif",
  "1002",
  "band lying straight leg raise",
  1
),
(
  7,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0986.gif",
  "0986",
  "band one arm overhead biceps curl",
  3
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0987.gif",
  "0987",
  "band one arm single leg split squat",
  13
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0988.gif",
  "0988",
  "band one arm standing low row",
  18
),
(
  2,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0989.gif",
  "0989",
  "band one arm twisting chest press",
  12
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0990.gif",
  "0990",
  "band one arm twisting seated row",
  18
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0991.gif",
  "0991",
  "band pull through",
  8
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0992.gif",
  "0992",
  "band push sit-up",
  1
),
(
  6,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0993.gif",
  "0993",
  "band reverse fly",
  6
),
(
  3,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0994.gif",
  "0994",
  "band reverse wrist curl",
  7
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0996.gif",
  "0996",
  "band seated hip internal rotation",
  8
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1011.gif",
  "1011",
  "band seated twist",
  1
),
(
  6,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0997.gif",
  "0997",
  "band shoulder press",
  6
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1018.gif",
  "1018",
  "band shrug",
  16
),
(
  7,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0998.gif",
  "0998",
  "band side triceps extension",
  17
),
(
  4,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/0999.gif",
  "0999",
  "band single leg calf raise",
  4
),
(
  4,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1000.gif",
  "1000",
  "band single leg reverse calf raise",
  4
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1001.gif",
  "1001",
  "band single leg split squat",
  13
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1004.gif",
  "1004",
  "band squat",
  8
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1003.gif",
  "1003",
  "band squat row",
  8
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1005.gif",
  "1005",
  "band standing crunch",
  1
),
(
  6,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1022.gif",
  "1022",
  "band standing rear delt row",
  6
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1007.gif",
  "1007",
  "band standing twisting crunch",
  1
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1008.gif",
  "1008",
  "band step-up",
  8
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1009.gif",
  "1009",
  "band stiff leg deadlift",
  8
),
(
  8,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1023.gif",
  "1023",
  "band straight back stiff leg deadlift",
  8
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1010.gif",
  "1010",
  "band straight leg deadlift",
  15
),
(
  6,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1012.gif",
  "1012",
  "band twisting overhead press",
  6
),
(
  4,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1369.gif",
  "1369",
  "band two legs calf raise -(band under both legs) v. 2",
  4
),
(
  0,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1013.gif",
  "1013",
  "band underhand pulldown",
  10
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1014.gif",
  "1014",
  "band v-up",
  1
),
(
  9,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1015.gif",
  "1015",
  "band vertical pallof press",
  1
),
(
  3,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1016.gif",
  "1016",
  "band wrist curl",
  7
),
(
  6,
  1,
  "http://d205bpvrqc9yn1.cloudfront.net/1017.gif",
  "1017",
  "band y-raise",
  6
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0023.gif",
  "0023",
  "barbell alternate biceps curl",
  3
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0024.gif",
  "0024",
  "barbell bench front squat",
  13
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0025.gif",
  "0025",
  "barbell bench press",
  12
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0026.gif",
  "0026",
  "barbell bench squat",
  13
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1316.gif",
  "1316",
  "barbell bent arm pullover",
  10
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0027.gif",
  "0027",
  "barbell bent over row",
  18
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/2407.gif",
  "2407",
  "barbell biceps curl(with arm blaster)",
  3
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0028.gif",
  "0028",
  "barbell clean and press",
  13
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0029.gif",
  "0029",
  "barbell clean-grip front squat",
  8
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0030.gif",
  "0030",
  "barbell close-grip bench press",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0031.gif",
  "0031",
  "barbell curl",
  3
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0032.gif",
  "0032",
  "barbell deadlift",
  8
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0033.gif",
  "0033",
  "barbell decline bench press",
  12
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0034.gif",
  "0034",
  "barbell decline bent arm pullover",
  10
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0035.gif",
  "0035",
  "barbell decline close grip to skull press",
  17
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1255.gif",
  "1255",
  "barbell decline pullover",
  12
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0036.gif",
  "0036",
  "barbell decline wide-grip press",
  12
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0037.gif",
  "0037",
  "barbell decline wide-grip pullover",
  10
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0038.gif",
  "0038",
  "barbell drag curl",
  3
),
(
  4,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1370.gif",
  "1370",
  "barbell floor calf raise",
  4
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0039.gif",
  "0039",
  "barbell front chest squat",
  8
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0041.gif",
  "0041",
  "barbell front raise",
  6
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0040.gif",
  "0040",
  "barbell front raise and pullover",
  12
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0042.gif",
  "0042",
  "barbell front squat",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0043.gif",
  "0043",
  "barbell full squat",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1461.gif",
  "1461",
  "barbell full squat(back pov)",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1462.gif",
  "1462",
  "barbell full squat(side pov)",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1545.gif",
  "1545",
  "barbell full zercher squat",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1409.gif",
  "1409",
  "barbell glute bridge",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/3562.gif",
  "3562",
  "barbell glute bridge two legs on bench(male)",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0044.gif",
  "0044",
  "barbell good morning",
  9
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0045.gif",
  "0045",
  "barbell guillotine bench press",
  12
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0046.gif",
  "0046",
  "barbell hack squat",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1436.gif",
  "1436",
  "barbell high bar squat",
  8
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0047.gif",
  "0047",
  "barbell incline bench press",
  12
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1719.gif",
  "1719",
  "barbell incline close grip bench press",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0048.gif",
  "0048",
  "barbell incline reverse-grip press",
  17
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0049.gif",
  "0049",
  "barbell incline row",
  18
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0050.gif",
  "0050",
  "barbell incline shoulder raise",
  14
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0051.gif",
  "0051",
  "barbell jefferson squat",
  8
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0052.gif",
  "0052",
  "barbell jm bench press",
  17
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0053.gif",
  "0053",
  "barbell jump squat",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1410.gif",
  "1410",
  "barbell lateral lunge",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1435.gif",
  "1435",
  "barbell low bar squat",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0054.gif",
  "0054",
  "barbell lunge",
  8
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1720.gif",
  "1720",
  "barbell lying back of the head tricep extension",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0055.gif",
  "0055",
  "barbell lying close-grip press",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0056.gif",
  "0056",
  "barbell lying close-grip triceps extension",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0057.gif",
  "0057",
  "barbell lying extension",
  17
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0058.gif",
  "0058",
  "barbell lying lifting(on hip)",
  8
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0059.gif",
  "0059",
  "barbell lying preacher curl",
  3
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0061.gif",
  "0061",
  "barbell lying triceps extension",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0060.gif",
  "0060",
  "barbell lying triceps extension skull crusher",
  17
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0063.gif",
  "0063",
  "barbell narrow stance squat",
  8
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0064.gif",
  "0064",
  "barbell one arm bent over row",
  18
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0065.gif",
  "0065",
  "barbell one arm floor press",
  17
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0066.gif",
  "0066",
  "barbell one arm side deadlift",
  8
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0067.gif",
  "0067",
  "barbell one arm snatch",
  6
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0068.gif",
  "0068",
  "barbell one leg squat",
  13
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0069.gif",
  "0069",
  "barbell overhead squat",
  13
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1411.gif",
  "1411",
  "barbell palms down wrist curl over a bench",
  7
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1412.gif",
  "1412",
  "barbell palms up wrist curl over a bench",
  7
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/3017.gif",
  "3017",
  "barbell pendlay row",
  18
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1751.gif",
  "1751",
  "barbell pin presses",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0070.gif",
  "0070",
  "barbell preacher curl",
  3
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0071.gif",
  "0071",
  "barbell press sit-up",
  1
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0072.gif",
  "0072",
  "barbell prone incline curl",
  3
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0073.gif",
  "0073",
  "barbell pullover",
  10
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0022.gif",
  "0022",
  "barbell pullover to press",
  10
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0074.gif",
  "0074",
  "barbell rack pull",
  8
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0075.gif",
  "0075",
  "barbell rear delt raise",
  6
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0076.gif",
  "0076",
  "barbell rear delt row",
  6
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0078.gif",
  "0078",
  "barbell rear lunge",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0077.gif",
  "0077",
  "barbell rear lunge v. 2",
  8
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0079.gif",
  "0079",
  "barbell revers wrist curl v. 2",
  7
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/2187.gif",
  "2187",
  "barbell reverse close-grip bench press",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0080.gif",
  "0080",
  "barbell reverse curl",
  3
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0118.gif",
  "0118",
  "barbell reverse grip bent over row",
  18
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1256.gif",
  "1256",
  "barbell reverse grip decline bench press",
  12
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1257.gif",
  "1257",
  "barbell reverse grip incline bench press",
  12
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1317.gif",
  "1317",
  "barbell reverse grip incline bench row",
  18
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1721.gif",
  "1721",
  "barbell reverse grip skullcrusher",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0081.gif",
  "0081",
  "barbell reverse preacher curl",
  3
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0082.gif",
  "0082",
  "barbell reverse wrist curl",
  7
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0084.gif",
  "0084",
  "barbell rollerout",
  1
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0083.gif",
  "0083",
  "barbell rollerout from bench",
  1
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0085.gif",
  "0085",
  "barbell romanian deadlift",
  8
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0086.gif",
  "0086",
  "barbell seated behind head military press",
  6
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0087.gif",
  "0087",
  "barbell seated bradford rocky press",
  6
),
(
  4,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0088.gif",
  "0088",
  "barbell seated calf raise",
  4
),
(
  4,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1371.gif",
  "1371",
  "barbell seated calf raise",
  4
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1718.gif",
  "1718",
  "barbell seated close grip behind neck triceps extension",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0089.gif",
  "0089",
  "barbell seated close-grip concentration curl",
  3
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0090.gif",
  "0090",
  "barbell seated good morning",
  8
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0091.gif",
  "0091",
  "barbell seated overhead press",
  6
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0092.gif",
  "0092",
  "barbell seated overhead triceps extension",
  17
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0094.gif",
  "0094",
  "barbell seated twist",
  1
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0095.gif",
  "0095",
  "barbell shrug",
  16
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0096.gif",
  "0096",
  "barbell side bent v. 2",
  1
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0098.gif",
  "0098",
  "barbell side split squat",
  13
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0097.gif",
  "0097",
  "barbell side split squat v. 2",
  13
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1756.gif",
  "1756",
  "barbell single leg deadlift",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0099.gif",
  "0099",
  "barbell single leg split squat",
  13
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/2799.gif",
  "2799",
  "barbell sitted alternate leg raise",
  1
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/2800.gif",
  "2800",
  "barbell sitted alternate leg raise(female)",
  1
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0100.gif",
  "0100",
  "barbell skier",
  6
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0101.gif",
  "0101",
  "barbell speed squat",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/2810.gif",
  "2810",
  "barbell split squat v. 2",
  13
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0102.gif",
  "0102",
  "barbell squat(on knees)",
  13
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/2798.gif",
  "2798",
  "barbell squat jump step rear lunge",
  13
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0103.gif",
  "0103",
  "barbell standing ab rollerout",
  1
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0104.gif",
  "0104",
  "barbell standing back wrist curl",
  7
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0105.gif",
  "0105",
  "barbell standing bradford press",
  6
),
(
  4,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1372.gif",
  "1372",
  "barbell standing calf raise",
  4
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0106.gif",
  "0106",
  "barbell standing close grip curl",
  3
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1456.gif",
  "1456",
  "barbell standing close grip military press",
  6
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/2414.gif",
  "2414",
  "barbell standing concentration curl",
  3
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0107.gif",
  "0107",
  "barbell standing front raise over head",
  6
),
(
  4,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0108.gif",
  "0108",
  "barbell standing leg calf raise",
  4
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0109.gif",
  "0109",
  "barbell standing overhead triceps extension",
  17
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0110.gif",
  "0110",
  "barbell standing reverse grip curl",
  3
),
(
  4,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0111.gif",
  "0111",
  "barbell standing rocking leg calf raise",
  4
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0112.gif",
  "0112",
  "barbell standing twist",
  1
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1629.gif",
  "1629",
  "barbell standing wide grip biceps curl",
  3
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1457.gif",
  "1457",
  "barbell standing wide military press",
  6
),
(
  7,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0113.gif",
  "0113",
  "barbell standing wide-grip curl",
  3
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0114.gif",
  "0114",
  "barbell step-up",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0115.gif",
  "0115",
  "barbell stiff leg good morning",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0116.gif",
  "0116",
  "barbell straight leg deadlift",
  9
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0117.gif",
  "0117",
  "barbell sumo deadlift",
  8
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/3305.gif",
  "3305",
  "barbell thruster",
  6
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0120.gif",
  "0120",
  "barbell upright row",
  6
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0119.gif",
  "0119",
  "barbell upright row v. 2",
  6
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0121.gif",
  "0121",
  "barbell upright row v. 3",
  6
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0122.gif",
  "0122",
  "barbell wide bench press",
  12
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1258.gif",
  "1258",
  "barbell wide reverse grip bench press",
  12
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0124.gif",
  "0124",
  "barbell wide squat",
  13
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0123.gif",
  "0123",
  "barbell wide-grip upright row",
  6
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0126.gif",
  "0126",
  "barbell wrist curl",
  7
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0125.gif",
  "0125",
  "barbell wrist curl v. 2",
  7
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0127.gif",
  "0127",
  "barbell zercher squat",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3212.gif",
  "3212",
  "basic toe touch(male)",
  8
),
(
  6,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/0128.gif",
  "0128",
  "battling ropes",
  6
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3360.gif",
  "3360",
  "bear crawl",
  5
),
(
  2,
  0,
  "http://d205bpvrqc9yn1.cloudfront.net/1259.gif",
  "1259",
  "behind head chest stretch",
  12
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0129.gif",
  "0129",
  "bench dip(knees bent)",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1399.gif",
  "1399",
  "bench dip on floor",
  17
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0130.gif",
  "0130",
  "bench hip extension",
  8
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3019.gif",
  "3019",
  "bench pull-ups",
  10
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3639.gif",
  "3639",
  "bent knee lying twist(male)",
  8
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1770.gif",
  "1770",
  "biceps leg concentration curl",
  3
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0139.gif",
  "0139",
  "biceps narrow pull-ups",
  3
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0140.gif",
  "0140",
  "biceps pull-up",
  3
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0137.gif",
  "0137",
  "body-up",
  17
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3543.gif",
  "3543",
  "bodyweight drop jump squat",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3544.gif",
  "3544",
  "bodyweight incline side plank",
  1
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1771.gif",
  "1771",
  "bodyweight kneeling triceps extension",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1769.gif",
  "1769",
  "bodyweight side lying biceps curl",
  3
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3168.gif",
  "3168",
  "bodyweight squatting row",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3167.gif",
  "3167",
  "bodyweight squatting row(with towel)",
  18
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1373.gif",
  "1373",
  "bodyweight standing calf raise",
  4
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3156.gif",
  "3156",
  "bodyweight standing close-grip one arm row",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3158.gif",
  "3158",
  "bodyweight standing close-grip row",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3162.gif",
  "3162",
  "bodyweight standing one arm row",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3161.gif",
  "3161",
  "bodyweight standing one arm row(with towel)",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3166.gif",
  "3166",
  "bodyweight standing row",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3165.gif",
  "3165",
  "bodyweight standing row(with towel)",
  18
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0138.gif",
  "0138",
  "bottoms-up",
  1
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1374.gif",
  "1374",
  "box jump down with one leg stabilization",
  4
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2466.gif",
  "2466",
  "bridge - mountain climber(cross body)",
  1
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1160.gif",
  "1160",
  "burpee",
  5
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0870.gif",
  "0870",
  "butt-ups",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1494.gif",
  "1494",
  "butterfly yoga pose",
  2
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0148.gif",
  "0148",
  "cable alternate shoulder press",
  6
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0149.gif",
  "0149",
  "cable alternate triceps extension",
  17
),
(
  8,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/3235.gif",
  "3235",
  "cable assisted inverse leg curl",
  9
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0150.gif",
  "0150",
  "cable bar lateral pulldown",
  10
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0151.gif",
  "0151",
  "cable bench press",
  12
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1630.gif",
  "1630",
  "cable close grip curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1631.gif",
  "1631",
  "cable concentration curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0152.gif",
  "0152",
  "cable concentration extension(on knee)",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0153.gif",
  "0153",
  "cable cross-over lateral pulldown",
  10
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0154.gif",
  "0154",
  "cable cross-over revers fly",
  6
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0155.gif",
  "0155",
  "cable cross-over variation",
  12
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0868.gif",
  "0868",
  "cable curl",
  3
),
(
  8,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0157.gif",
  "0157",
  "cable deadlift",
  8
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0158.gif",
  "0158",
  "cable decline fly",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1260.gif",
  "1260",
  "cable decline one arm press",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1261.gif",
  "1261",
  "cable decline press",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0159.gif",
  "0159",
  "cable decline seated wide-grip row",
  18
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1632.gif",
  "1632",
  "cable drag curl",
  3
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0160.gif",
  "0160",
  "cable floor seated wide-grip row",
  18
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0161.gif",
  "0161",
  "cable forward raise",
  6
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0162.gif",
  "0162",
  "cable front raise",
  6
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0164.gif",
  "0164",
  "cable front shoulder raise",
  6
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0165.gif",
  "0165",
  "cable hammer curl(with rope)",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1722.gif",
  "1722",
  "cable high pulley overhead tricep extension",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0167.gif",
  "0167",
  "cable high row(kneeling)",
  18
),
(
  8,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0168.gif",
  "0168",
  "cable hip adduction",
  2
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0169.gif",
  "0169",
  "cable incline bench press",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1318.gif",
  "1318",
  "cable incline bench row",
  18
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0171.gif",
  "0171",
  "cable incline fly",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0170.gif",
  "0170",
  "cable incline fly(on stability ball)",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0172.gif",
  "0172",
  "cable incline pushdown",
  10
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0173.gif",
  "0173",
  "cable incline triceps extension",
  17
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0174.gif",
  "0174",
  "cable judo flip",
  1
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0860.gif",
  "0860",
  "cable kickback",
  17
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0175.gif",
  "0175",
  "cable kneeling crunch",
  1
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/3697.gif",
  "3697",
  "cable kneeling rear delt row(with rope)(male)",
  6
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0176.gif",
  "0176",
  "cable kneeling triceps extension",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/2330.gif",
  "2330",
  "cable lat pulldown full range of motion",
  10
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0177.gif",
  "0177",
  "cable lateral pulldown(with rope attachment)",
  10
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/2616.gif",
  "2616",
  "cable lateral pulldown with v-bar",
  10
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0178.gif",
  "0178",
  "cable lateral raise",
  6
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0179.gif",
  "0179",
  "cable low fly",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0180.gif",
  "0180",
  "cable low seated row",
  18
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1634.gif",
  "1634",
  "cable lying bicep curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0182.gif",
  "0182",
  "cable lying close-grip curl",
  3
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0184.gif",
  "0184",
  "cable lying extension pullover(with rope attachment)",
  10
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0185.gif",
  "0185",
  "cable lying fly",
  12
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0186.gif",
  "0186",
  "cable lying triceps extension v. 2",
  17
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0188.gif",
  "0188",
  "cable middle fly",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0189.gif",
  "0189",
  "cable one arm bent over row",
  18
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0190.gif",
  "0190",
  "cable one arm curl",
  3
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1262.gif",
  "1262",
  "cable one arm decline chest fly",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1263.gif",
  "1263",
  "cable one arm fly on exercise ball",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1264.gif",
  "1264",
  "cable one arm incline fly on exercise ball",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1265.gif",
  "1265",
  "cable one arm incline press",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1266.gif",
  "1266",
  "cable one arm incline press on exercise ball",
  12
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0191.gif",
  "0191",
  "cable one arm lateral bent-over",
  12
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0192.gif",
  "0192",
  "cable one arm lateral raise",
  6
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1633.gif",
  "1633",
  "cable one arm preacher curl",
  3
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1267.gif",
  "1267",
  "cable one arm press on exercise ball",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/3563.gif",
  "3563",
  "cable one arm pulldown",
  10
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1635.gif",
  "1635",
  "cable one arm reverse preacher curl",
  3
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0193.gif",
  "0193",
  "cable one arm straight back high row(kneeling)",
  18
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1723.gif",
  "1723",
  "cable one arm tricep pushdown",
  17
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1636.gif",
  "1636",
  "cable overhead curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1637.gif",
  "1637",
  "cable overhead curl on exercise ball",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0194.gif",
  "0194",
  "cable overhead triceps extension(rope attachment)",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1319.gif",
  "1319",
  "cable palm rotational row",
  18
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0195.gif",
  "0195",
  "cable preacher curl",
  3
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1268.gif",
  "1268",
  "cable press on exercise ball",
  12
),
(
  8,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0196.gif",
  "0196",
  "cable pull through(with rope)",
  8
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0198.gif",
  "0198",
  "cable pulldown",
  10
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0197.gif",
  "0197",
  "cable pulldown(pro lat bar)",
  10
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1638.gif",
  "1638",
  "cable pulldown bicep curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0201.gif",
  "0201",
  "cable pushdown",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0199.gif",
  "0199",
  "cable pushdown(straight arm) v. 2",
  10
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0200.gif",
  "0200",
  "cable pushdown(with rope attachment)",
  17
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0202.gif",
  "0202",
  "cable rear delt row(stirrups)",
  6
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0203.gif",
  "0203",
  "cable rear delt row(with rope)",
  6
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0204.gif",
  "0204",
  "cable rear drive",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0205.gif",
  "0205",
  "cable rear pulldown",
  10
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0873.gif",
  "0873",
  "cable reverse crunch",
  1
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0206.gif",
  "0206",
  "cable reverse curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/2406.gif",
  "2406",
  "cable reverse grip triceps pushdown(sz-bar)(with arm blaster)",
  17
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1413.gif",
  "1413",
  "cable reverse one arm curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0209.gif",
  "0209",
  "cable reverse preacher curl",
  3
),
(
  3,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0210.gif",
  "0210",
  "cable reverse wrist curl",
  7
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0207.gif",
  "0207",
  "cable reverse-grip pushdown",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0208.gif",
  "0208",
  "cable reverse-grip straight back seated high row",
  18
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1320.gif",
  "1320",
  "cable rope crossover seated row",
  18
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1321.gif",
  "1321",
  "cable rope elevated seated row",
  18
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1322.gif",
  "1322",
  "cable rope extension incline bench row",
  18
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1639.gif",
  "1639",
  "cable rope hammer preacher curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1724.gif",
  "1724",
  "cable rope high pulley overhead tricep extension",
  17
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1725.gif",
  "1725",
  "cable rope incline tricep extension",
  17
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1726.gif",
  "1726",
  "cable rope lying on floor tricep extension",
  17
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1640.gif",
  "1640",
  "cable rope one arm hammer preacher curl",
  3
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1323.gif",
  "1323",
  "cable rope seated row",
  18
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0211.gif",
  "0211",
  "cable russian twists(on stability ball)",
  1
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/2144.gif",
  "2144",
  "cable seated chest press",
  12
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0212.gif",
  "0212",
  "cable seated crunch",
  1
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1641.gif",
  "1641",
  "cable seated curl",
  3
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0213.gif",
  "0213",
  "cable seated high row(v-bar)",
  10
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0214.gif",
  "0214",
  "cable seated one arm alternate row",
  18
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1642.gif",
  "1642",
  "cable seated one arm concentration curl",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1643.gif",
  "1643",
  "cable seated overhead curl",
  3
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0215.gif",
  "0215",
  "cable seated rear lateral raise",
  6
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0861.gif",
  "0861",
  "cable seated row",
  18
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0216.gif",
  "0216",
  "cable seated shoulder internal rotation",
  6
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/2399.gif",
  "2399",
  "cable seated twist",
  1
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0218.gif",
  "0218",
  "cable seated wide-grip row",
  18
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0219.gif",
  "0219",
  "cable shoulder press",
  6
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0220.gif",
  "0220",
  "cable shrug",
  16
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0222.gif",
  "0222",
  "cable side bend",
  1
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0221.gif",
  "0221",
  "cable side bend crunch(bosu ball)",
  1
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0223.gif",
  "0223",
  "cable side crunch",
  1
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1717.gif",
  "1717",
  "cable squat row(with rope attachment)",
  10
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1644.gif",
  "1644",
  "cable squatting curl",
  3
),
(
  3,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0224.gif",
  "0224",
  "cable standing back wrist curl",
  7
),
(
  4,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1375.gif",
  "1375",
  "cable standing calf raise",
  4
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0225.gif",
  "0225",
  "cable standing cross-over high reverse fly",
  6
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0226.gif",
  "0226",
  "cable standing crunch",
  1
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0874.gif",
  "0874",
  "cable standing crunch(with rope attachment)",
  1
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0227.gif",
  "0227",
  "cable standing fly",
  12
),
(
  8,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0228.gif",
  "0228",
  "cable standing hip extension",
  8
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0229.gif",
  "0229",
  "cable standing inner curl",
  3
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0230.gif",
  "0230",
  "cable standing lift",
  1
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0231.gif",
  "0231",
  "cable standing one arm triceps extension",
  17
),
(
  4,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1376.gif",
  "1376",
  "cable standing one leg calf raise",
  4
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0232.gif",
  "0232",
  "cable standing pulldown(with rope)",
  3
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0233.gif",
  "0233",
  "cable standing rear delt row(with rope)",
  6
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1727.gif",
  "1727",
  "cable standing reverse grip one arm overhead tricep extension",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0234.gif",
  "0234",
  "cable standing row(v-bar)",
  18
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0235.gif",
  "0235",
  "cable standing shoulder external rotation",
  6
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0236.gif",
  "0236",
  "cable standing twist row(v-bar)",
  18
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1269.gif",
  "1269",
  "cable standing up straight crossovers",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0238.gif",
  "0238",
  "cable straight arm pulldown",
  10
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0237.gif",
  "0237",
  "cable straight arm pulldown(with rope)",
  10
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0239.gif",
  "0239",
  "cable straight back seated row",
  18
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0240.gif",
  "0240",
  "cable supine reverse fly",
  6
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/2464.gif",
  "2464",
  "cable thibaudeau kayak row",
  10
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0241.gif",
  "0241",
  "cable triceps pushdown(v-bar)",
  17
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/2405.gif",
  "2405",
  "cable triceps pushdown(v-bar)(with arm blaster)",
  17
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0242.gif",
  "0242",
  "cable tuck reverse crunch",
  1
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0243.gif",
  "0243",
  "cable twist",
  1
),
(
  9,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0862.gif",
  "0862",
  "cable twist(up-down)",
  1
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0244.gif",
  "0244",
  "cable twisting pull",
  10
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1645.gif",
  "1645",
  "cable two arm curl on incline bench",
  3
),
(
  7,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1728.gif",
  "1728",
  "cable two arm tricep kickback",
  17
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0245.gif",
  "0245",
  "cable underhand pulldown",
  10
),
(
  2,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1270.gif",
  "1270",
  "cable upper chest crossovers",
  12
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1324.gif",
  "1324",
  "cable upper row",
  18
),
(
  6,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0246.gif",
  "0246",
  "cable upright row",
  6
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/1325.gif",
  "1325",
  "cable wide grip rear pulldown behind neck",
  10
),
(
  3,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0247.gif",
  "0247",
  "cable wrist curl",
  7
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1407.gif",
  "1407",
  "calf push stretch with hands against wall",
  4
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1377.gif",
  "1377",
  "calf stretch with hands against wall",
  4
),
(
  4,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/1378.gif",
  "1378",
  "calf stretch with rope",
  4
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0248.gif",
  "0248",
  "cambered bar lying row",
  18
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2963.gif",
  "2963",
  "captains chair straight leg raise",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1548.gif",
  "1548",
  "chair leg extended stretch",
  13
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1271.gif",
  "1271",
  "chest and front of shoulder stretch",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0251.gif",
  "0251",
  "chest dip",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1430.gif",
  "1430",
  "chest dip(on dip-pull-up cage)",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2462.gif",
  "2462",
  "chest dip on straight bar",
  12
),
(
  2,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1272.gif",
  "1272",
  "chest stretch with exercise ball",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3216.gif",
  "3216",
  "chest tap push-up(male)",
  12
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1326.gif",
  "1326",
  "chin-up",
  10
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0253.gif",
  "0253",
  "chin-ups(narrow parallel grip)",
  18
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0257.gif",
  "0257",
  "circles knee stretch",
  4
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1273.gif",
  "1273",
  "clap push up",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0258.gif",
  "0258",
  "clock push-up",
  12
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1327.gif",
  "1327",
  "close grip chin-up",
  10
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0259.gif",
  "0259",
  "close-grip push-up",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2398.gif",
  "2398",
  "close-grip push-up(on knees)",
  17
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0260.gif",
  "0260",
  "cocoons",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1468.gif",
  "1468",
  "crab twist toe touch",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0262.gif",
  "0262",
  "cross body crunch",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0267.gif",
  "0267",
  "crunch(hands overhead)",
  1
),
(
  9,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/0271.gif",
  "0271",
  "crunch(on stability ball)",
  1
),
(
  9,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/0272.gif",
  "0272",
  "crunch(on stability ball, arms straight)",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0274.gif",
  "0274",
  "crunch floor",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3016.gif",
  "3016",
  "curl-up",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3769.gif",
  "3769",
  "curtsey squat",
  8
),
(
  1,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2331.gif",
  "2331",
  "cycle cross trainer",
  5
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0276.gif",
  "0276",
  "dead bug",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0277.gif",
  "0277",
  "decline crunch",
  1
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0279.gif",
  "0279",
  "decline push-up",
  12
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0282.gif",
  "0282",
  "decline sit-up",
  1
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1274.gif",
  "1274",
  "deep push up",
  12
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0283.gif",
  "0283",
  "diamond push-up",
  17
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0284.gif",
  "0284",
  "donkey calf raise",
  4
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1275.gif",
  "1275",
  "drop push up",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0285.gif",
  "0285",
  "dumbbell alternate biceps curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2403.gif",
  "2403",
  "dumbbell alternate biceps curl(with arm blaster)",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1646.gif",
  "1646",
  "dumbbell alternate hammer preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1647.gif",
  "1647",
  "dumbbell alternate preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1648.gif",
  "1648",
  "dumbbell alternate seated hammer curl",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0286.gif",
  "0286",
  "dumbbell alternate side press",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1649.gif",
  "1649",
  "dumbbell alternating bicep curl with leg raised on exercise ball",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1650.gif",
  "1650",
  "dumbbell alternating seated bicep curl on exercise ball",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2137.gif",
  "2137",
  "dumbbell arnold press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0287.gif",
  "0287",
  "dumbbell arnold press v. 2",
  6
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0288.gif",
  "0288",
  "dumbbell around pullover",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0289.gif",
  "0289",
  "dumbbell bench press",
  12
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0290.gif",
  "0290",
  "dumbbell bench seated press",
  6
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0291.gif",
  "0291",
  "dumbbell bench squat",
  8
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0293.gif",
  "0293",
  "dumbbell bent over row",
  18
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1651.gif",
  "1651",
  "dumbbell bicep curl lunge with bowling motion",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1652.gif",
  "1652",
  "dumbbell bicep curl on exercise ball with leg raised",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1653.gif",
  "1653",
  "dumbbell bicep curl with stork stance",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0294.gif",
  "0294",
  "dumbbell biceps curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2401.gif",
  "2401",
  "dumbbell biceps curl(with arm blaster)",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1654.gif",
  "1654",
  "dumbbell biceps curl reverse",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1655.gif",
  "1655",
  "dumbbell biceps curl squat",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1656.gif",
  "1656",
  "dumbbell biceps curl v sit on bosu ball",
  3
),
(
  1,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1201.gif",
  "1201",
  "dumbbell burpee",
  5
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0295.gif",
  "0295",
  "dumbbell clean",
  8
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1731.gif",
  "1731",
  "dumbbell close grip press",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0296.gif",
  "0296",
  "dumbbell close-grip press",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0297.gif",
  "0297",
  "dumbbell concentration curl",
  3
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3635.gif",
  "3635",
  "dumbbell contralateral forward lunge",
  8
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0298.gif",
  "0298",
  "dumbbell cross body hammer curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1657.gif",
  "1657",
  "dumbbell cross body hammer curl v. 2",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0299.gif",
  "0299",
  "dumbbell cuban press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2136.gif",
  "2136",
  "dumbbell cuban press v. 2",
  6
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0300.gif",
  "0300",
  "dumbbell deadlift",
  8
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0301.gif",
  "0301",
  "dumbbell decline bench press",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0302.gif",
  "0302",
  "dumbbell decline fly",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0303.gif",
  "0303",
  "dumbbell decline hammer press",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1276.gif",
  "1276",
  "dumbbell decline one arm fly",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1617.gif",
  "1617",
  "dumbbell decline one arm hammer press",
  17
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0305.gif",
  "0305",
  "dumbbell decline shrug",
  16
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0304.gif",
  "0304",
  "dumbbell decline shrug v. 2",
  16
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0306.gif",
  "0306",
  "dumbbell decline triceps extension",
  17
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0307.gif",
  "0307",
  "dumbbell decline twist fly",
  12
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1437.gif",
  "1437",
  "dumbbell finger curls",
  7
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0308.gif",
  "0308",
  "dumbbell fly",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1277.gif",
  "1277",
  "dumbbell fly on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1732.gif",
  "1732",
  "dumbbell forward lunge triceps extension",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0310.gif",
  "0310",
  "dumbbell front raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0309.gif",
  "0309",
  "dumbbell front raise v. 2",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0311.gif",
  "0311",
  "dumbbell full can lateral raise",
  6
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1760.gif",
  "1760",
  "dumbbell goblet squat",
  13
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0313.gif",
  "0313",
  "dumbbell hammer curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1659.gif",
  "1659",
  "dumbbell hammer curl on exercise ball",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0312.gif",
  "0312",
  "dumbbell hammer curl v. 2",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2402.gif",
  "2402",
  "dumbbell hammer curls(with arm blaster)",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1664.gif",
  "1664",
  "dumbbell high curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3545.gif",
  "3545",
  "dumbbell incline alternate press",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0314.gif",
  "0314",
  "dumbbell incline bench press",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0315.gif",
  "0315",
  "dumbbell incline biceps curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0316.gif",
  "0316",
  "dumbbell incline breeding",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0318.gif",
  "0318",
  "dumbbell incline curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0317.gif",
  "0317",
  "dumbbell incline curl v. 2",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0319.gif",
  "0319",
  "dumbbell incline fly",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1278.gif",
  "1278",
  "dumbbell incline fly on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0320.gif",
  "0320",
  "dumbbell incline hammer curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0321.gif",
  "0321",
  "dumbbell incline hammer press",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1618.gif",
  "1618",
  "dumbbell incline hammer press on exercise ball",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0322.gif",
  "0322",
  "dumbbell incline inner biceps curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1279.gif",
  "1279",
  "dumbbell incline one arm fly",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1280.gif",
  "1280",
  "dumbbell incline one arm fly on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1619.gif",
  "1619",
  "dumbbell incline one arm hammer press",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1620.gif",
  "1620",
  "dumbbell incline one arm hammer press on exercise ball",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0323.gif",
  "0323",
  "dumbbell incline one arm lateral raise",
  6
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1281.gif",
  "1281",
  "dumbbell incline one arm press",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1282.gif",
  "1282",
  "dumbbell incline one arm press on exercise ball",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0324.gif",
  "0324",
  "dumbbell incline palm-in press",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1283.gif",
  "1283",
  "dumbbell incline press on exercise ball",
  12
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0325.gif",
  "0325",
  "dumbbell incline raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0326.gif",
  "0326",
  "dumbbell incline rear lateral raise",
  6
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0327.gif",
  "0327",
  "dumbbell incline row",
  18
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0328.gif",
  "0328",
  "dumbbell incline shoulder raise",
  14
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0329.gif",
  "0329",
  "dumbbell incline shrug",
  16
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3542.gif",
  "3542",
  "dumbbell incline t-raise",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0330.gif",
  "0330",
  "dumbbell incline triceps extension",
  17
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0331.gif",
  "0331",
  "dumbbell incline twisted flyes",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1733.gif",
  "1733",
  "dumbbell incline two arm extension",
  17
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3541.gif",
  "3541",
  "dumbbell incline y-raise",
  18
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0332.gif",
  "0332",
  "dumbbell iron cross",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0333.gif",
  "0333",
  "dumbbell kickback",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1734.gif",
  "1734",
  "dumbbell kickbacks on exercise ball",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1660.gif",
  "1660",
  "dumbbell kneeling bicep curl exercise ball",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0334.gif",
  "0334",
  "dumbbell lateral raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0335.gif",
  "0335",
  "dumbbell lateral to front raise",
  6
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0336.gif",
  "0336",
  "dumbbell lunge",
  8
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1658.gif",
  "1658",
  "dumbbell lunge with bicep curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0337.gif",
  "0337",
  "dumbbell lying  extension(across face)",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1729.gif",
  "1729",
  "dumbbell lying alternate extension",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0338.gif",
  "0338",
  "dumbbell lying elbow press",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0863.gif",
  "0863",
  "dumbbell lying external shoulder rotation",
  6
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0339.gif",
  "0339",
  "dumbbell lying femoral",
  9
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0340.gif",
  "0340",
  "dumbbell lying hammer press",
  12
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2470.gif",
  "2470",
  "dumbbell lying on floor rear delt raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0341.gif",
  "0341",
  "dumbbell lying one arm deltoid rear",
  6
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0343.gif",
  "0343",
  "dumbbell lying one arm press",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0342.gif",
  "0342",
  "dumbbell lying one arm press v. 2",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0344.gif",
  "0344",
  "dumbbell lying one arm pronated triceps extension",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0345.gif",
  "0345",
  "dumbbell lying one arm rear lateral raise",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0346.gif",
  "0346",
  "dumbbell lying one arm supinated triceps extension",
  17
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0347.gif",
  "0347",
  "dumbbell lying pronation",
  7
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2705.gif",
  "2705",
  "dumbbell lying pronation on floor",
  7
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1284.gif",
  "1284",
  "dumbbell lying pullover on exercise ball",
  12
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1328.gif",
  "1328",
  "dumbbell lying rear delt row",
  18
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0348.gif",
  "0348",
  "dumbbell lying rear lateral raise",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1735.gif",
  "1735",
  "dumbbell lying single extension",
  17
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0349.gif",
  "0349",
  "dumbbell lying supination",
  7
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2706.gif",
  "2706",
  "dumbbell lying supination on floor",
  7
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1661.gif",
  "1661",
  "dumbbell lying supine biceps curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0350.gif",
  "0350",
  "dumbbell lying supine curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0351.gif",
  "0351",
  "dumbbell lying triceps extension",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1662.gif",
  "1662",
  "dumbbell lying wide curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0352.gif",
  "0352",
  "dumbbell neutral grip bench press",
  17
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1285.gif",
  "1285",
  "dumbbell one arm bench fly",
  12
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0292.gif",
  "0292",
  "dumbbell one arm bent-over row",
  18
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1286.gif",
  "1286",
  "dumbbell one arm chest fly on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0353.gif",
  "0353",
  "dumbbell one arm concetration curl(on stability ball)",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1287.gif",
  "1287",
  "dumbbell one arm decline chest press",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1288.gif",
  "1288",
  "dumbbell one arm fly on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1736.gif",
  "1736",
  "dumbbell one arm french press on exercise ball",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1663.gif",
  "1663",
  "dumbbell one arm hammer preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1621.gif",
  "1621",
  "dumbbell one arm hammer press on exercise ball",
  17
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1289.gif",
  "1289",
  "dumbbell one arm incline chest press",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0354.gif",
  "0354",
  "dumbbell one arm kickback",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0355.gif",
  "0355",
  "dumbbell one arm lateral raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0356.gif",
  "0356",
  "dumbbell one arm lateral raise with support",
  6
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1290.gif",
  "1290",
  "dumbbell one arm press on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1665.gif",
  "1665",
  "dumbbell one arm prone curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1666.gif",
  "1666",
  "dumbbell one arm prone hammer curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1291.gif",
  "1291",
  "dumbbell one arm pullover on exercise ball",
  12
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0358.gif",
  "0358",
  "dumbbell one arm revers wrist curl",
  7
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0359.gif",
  "0359",
  "dumbbell one arm reverse fly(with support)",
  6
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1622.gif",
  "1622",
  "dumbbell one arm reverse grip press",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1414.gif",
  "1414",
  "dumbbell one arm reverse preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1667.gif",
  "1667",
  "dumbbell one arm reverse spider curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1668.gif",
  "1668",
  "dumbbell one arm seated bicep curl on exercise ball",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1669.gif",
  "1669",
  "dumbbell one arm seated hammer curl",
  3
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1415.gif",
  "1415",
  "dumbbell one arm seated neutral wrist curl",
  7
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0361.gif",
  "0361",
  "dumbbell one arm shoulder press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0360.gif",
  "0360",
  "dumbbell one arm shoulder press v. 2",
  6
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3888.gif",
  "3888",
  "dumbbell one arm snatch",
  8
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1670.gif",
  "1670",
  "dumbbell one arm standing curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1671.gif",
  "1671",
  "dumbbell one arm standing hammer curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0362.gif",
  "0362",
  "dumbbell one arm triceps extension(on bench)",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0363.gif",
  "0363",
  "dumbbell one arm upright row",
  6
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0364.gif",
  "0364",
  "dumbbell one arm wrist curl",
  7
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1672.gif",
  "1672",
  "dumbbell one arm zottman preacher curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1292.gif",
  "1292",
  "dumbbell one leg fly on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0365.gif",
  "0365",
  "dumbbell over bench neutral wrist curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0366.gif",
  "0366",
  "dumbbell over bench one arm  neutral wrist curl",
  3
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1441.gif",
  "1441",
  "dumbbell over bench one arm reverse wrist curl",
  7
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0367.gif",
  "0367",
  "dumbbell over bench one arm wrist curl",
  7
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0368.gif",
  "0368",
  "dumbbell over bench revers wrist curl",
  7
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0369.gif",
  "0369",
  "dumbbell over bench wrist curl",
  7
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1329.gif",
  "1329",
  "dumbbell palm rotational bent over row",
  18
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1623.gif",
  "1623",
  "dumbbell palms in incline bench press",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0370.gif",
  "0370",
  "dumbbell peacher hammer curl",
  3
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0371.gif",
  "0371",
  "dumbbell plyo squat",
  8
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0372.gif",
  "0372",
  "dumbbell preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1673.gif",
  "1673",
  "dumbbell preacher curl over exercise ball",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1293.gif",
  "1293",
  "dumbbell press on exercise ball",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0373.gif",
  "0373",
  "dumbbell pronate-grip triceps extension",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0374.gif",
  "0374",
  "dumbbell prone incline curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1674.gif",
  "1674",
  "dumbbell prone incline hammer curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0375.gif",
  "0375",
  "dumbbell pullover",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1294.gif",
  "1294",
  "dumbbell pullover hip extension on exercise ball",
  12
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1295.gif",
  "1295",
  "dumbbell pullover on exercise ball",
  12
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1700.gif",
  "1700",
  "dumbbell push press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0376.gif",
  "0376",
  "dumbbell raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2292.gif",
  "2292",
  "dumbbell rear delt raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0377.gif",
  "0377",
  "dumbbell rear delt row_shoulder",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0378.gif",
  "0378",
  "dumbbell rear fly",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0380.gif",
  "0380",
  "dumbbell rear lateral raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0379.gif",
  "0379",
  "dumbbell rear lateral raise(support head)",
  6
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0381.gif",
  "0381",
  "dumbbell rear lunge",
  8
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0382.gif",
  "0382",
  "dumbbell revers grip biceps curl",
  3
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1624.gif",
  "1624",
  "dumbbell reverse bench press",
  12
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0383.gif",
  "0383",
  "dumbbell reverse fly",
  6
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1330.gif",
  "1330",
  "dumbbell reverse grip incline bench one arm row",
  18
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1331.gif",
  "1331",
  "dumbbell reverse grip incline bench two arm row",
  18
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2327.gif",
  "2327",
  "dumbbell reverse grip row(female)",
  18
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0384.gif",
  "0384",
  "dumbbell reverse preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1675.gif",
  "1675",
  "dumbbell reverse spider curl",
  3
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0385.gif",
  "0385",
  "dumbbell reverse wrist curl",
  7
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1459.gif",
  "1459",
  "dumbbell romanian deadlift",
  8
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0386.gif",
  "0386",
  "dumbbell rotation reverse fly",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2397.gif",
  "2397",
  "dumbbell scott press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0387.gif",
  "0387",
  "dumbbell seated alternate front raise",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1676.gif",
  "1676",
  "dumbbell seated alternate hammer curl on exercise ball",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0388.gif",
  "0388",
  "dumbbell seated alternate press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3546.gif",
  "3546",
  "dumbbell seated alternate shoulder",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0389.gif",
  "0389",
  "dumbbell seated bench extension",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2317.gif",
  "2317",
  "dumbbell seated bent arm lateral raise",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1730.gif",
  "1730",
  "dumbbell seated bent over alternate kickback",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1737.gif",
  "1737",
  "dumbbell seated bent over triceps extension",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1677.gif",
  "1677",
  "dumbbell seated bicep curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0390.gif",
  "0390",
  "dumbbell seated biceps curl(on stability ball)",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3547.gif",
  "3547",
  "dumbbell seated biceps curl to shoulder press",
  3
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1379.gif",
  "1379",
  "dumbbell seated calf raise",
  4
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0391.gif",
  "0391",
  "dumbbell seated curl",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0392.gif",
  "0392",
  "dumbbell seated front raise",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1678.gif",
  "1678",
  "dumbbell seated hammer curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0393.gif",
  "0393",
  "dumbbell seated inner biceps curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0394.gif",
  "0394",
  "dumbbell seated kickback",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0396.gif",
  "0396",
  "dumbbell seated lateral raise",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0395.gif",
  "0395",
  "dumbbell seated lateral raise v. 2",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0397.gif",
  "0397",
  "dumbbell seated neutral wrist curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1679.gif",
  "1679",
  "dumbbell seated one arm bicep curl on exercise ball with leg raised",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0398.gif",
  "0398",
  "dumbbell seated one arm kickback",
  17
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0399.gif",
  "0399",
  "dumbbell seated one arm rotate",
  7
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0400.gif",
  "0400",
  "dumbbell seated one leg calf raise",
  4
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1380.gif",
  "1380",
  "dumbbell seated one leg calf raise - hammer grip",
  4
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1381.gif",
  "1381",
  "dumbbell seated one leg calf raise - palm up",
  4
),
(
  3,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0401.gif",
  "0401",
  "dumbbell seated palms up wrist curl",
  7
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0402.gif",
  "0402",
  "dumbbell seated preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0403.gif",
  "0403",
  "dumbbell seated revers grip concentration curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1738.gif",
  "1738",
  "dumbbell seated reverse grip one arm overhead tricep extension",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0405.gif",
  "0405",
  "dumbbell seated shoulder press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0404.gif",
  "0404",
  "dumbbell seated shoulder press(parallel grip)",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2188.gif",
  "2188",
  "dumbbell seated triceps extension",
  17
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0406.gif",
  "0406",
  "dumbbell shrug",
  16
),
(
  9,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0407.gif",
  "0407",
  "dumbbell side bend",
  1
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0408.gif",
  "0408",
  "dumbbell side lying one hand raise",
  6
),
(
  0,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3664.gif",
  "3664",
  "dumbbell side plank with rear fly",
  18
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3548.gif",
  "3548",
  "dumbbell single arm overhead carry",
  6
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0409.gif",
  "0409",
  "dumbbell single leg calf raise",
  4
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1757.gif",
  "1757",
  "dumbbell single leg deadlift",
  8
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2805.gif",
  "2805",
  "dumbbell single leg deadlift with stepbox support",
  8
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0410.gif",
  "0410",
  "dumbbell single leg split squat",
  13
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0411.gif",
  "0411",
  "dumbbell single leg squat",
  8
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0413.gif",
  "0413",
  "dumbbell squat",
  8
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3560.gif",
  "3560",
  "dumbbell standing alternate hammer curl and press",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0414.gif",
  "0414",
  "dumbbell standing alternate overhead press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0415.gif",
  "0415",
  "dumbbell standing alternate raise",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1739.gif",
  "1739",
  "dumbbell standing alternating tricep kickback",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2143.gif",
  "2143",
  "dumbbell standing around world",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1740.gif",
  "1740",
  "dumbbell standing bent over one arm triceps extension",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1741.gif",
  "1741",
  "dumbbell standing bent over two arm triceps extension",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0416.gif",
  "0416",
  "dumbbell standing biceps curl",
  3
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0417.gif",
  "0417",
  "dumbbell standing calf raise",
  4
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0418.gif",
  "0418",
  "dumbbell standing concentration curl",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0419.gif",
  "0419",
  "dumbbell standing front raise above head",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2321.gif",
  "2321",
  "dumbbell standing inner biceps curl v. 2",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0420.gif",
  "0420",
  "dumbbell standing kickback",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0421.gif",
  "0421",
  "dumbbell standing one arm concentration curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0422.gif",
  "0422",
  "dumbbell standing one arm curl(over incline bench)",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1680.gif",
  "1680",
  "dumbbell standing one arm curl over incline bench",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0423.gif",
  "0423",
  "dumbbell standing one arm extension",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0424.gif",
  "0424",
  "dumbbell standing one arm palm in press",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0425.gif",
  "0425",
  "dumbbell standing one arm reverse curl",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0426.gif",
  "0426",
  "dumbbell standing overhead press",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0427.gif",
  "0427",
  "dumbbell standing palms in press",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0428.gif",
  "0428",
  "dumbbell standing preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0429.gif",
  "0429",
  "dumbbell standing reverse curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0430.gif",
  "0430",
  "dumbbell standing triceps extension",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2293.gif",
  "2293",
  "dumbbell standing zottman preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1684.gif",
  "1684",
  "dumbbell step up single leg balance with bicep curl",
  3
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0431.gif",
  "0431",
  "dumbbell step-up",
  8
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2796.gif",
  "2796",
  "dumbbell step-up lunge",
  13
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2812.gif",
  "2812",
  "dumbbell step-up split squat",
  13
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0432.gif",
  "0432",
  "dumbbell stiff leg deadlift",
  8
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0433.gif",
  "0433",
  "dumbbell straight arm pullover",
  12
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0434.gif",
  "0434",
  "dumbbell straight leg deadlift",
  8
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2808.gif",
  "2808",
  "dumbbell sumo pull through",
  8
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2803.gif",
  "2803",
  "dumbbell supported squat",
  13
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0436.gif",
  "0436",
  "dumbbell tate press",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1742.gif",
  "1742",
  "dumbbell tricep kickback with stork stance",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1743.gif",
  "1743",
  "dumbbell twisting bench press",
  17
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0437.gif",
  "0437",
  "dumbbell upright row",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1765.gif",
  "1765",
  "dumbbell upright row(back pov)",
  6
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0864.gif",
  "0864",
  "dumbbell upright shoulder external rotation",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/5201.gif",
  "5201",
  "dumbbell waiter biceps curl",
  3
),
(
  6,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0438.gif",
  "0438",
  "dumbbell w-press",
  6
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0439.gif",
  "0439",
  "dumbbell zottman curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2294.gif",
  "2294",
  "dumbbell zottman preacher curl",
  3
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2189.gif",
  "2189",
  "dumbbells seated triceps extension",
  17
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1167.gif",
  "1167",
  "dynamic chest stretch(male)",
  12
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3287.gif",
  "3287",
  "elbow dips",
  17
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1772.gif",
  "1772",
  "elbow lift - reverse push-up",
  18
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0443.gif",
  "0443",
  "elbow-to-knee",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3292.gif",
  "3292",
  "elevator",
  18
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1332.gif",
  "1332",
  "exercise ball alternating arm ups",
  10
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1333.gif",
  "1333",
  "exercise ball back extension with arms extended",
  15
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1334.gif",
  "1334",
  "exercise ball back extension with hands behind head",
  15
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1335.gif",
  "1335",
  "exercise ball back extension with knees off ground",
  15
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1336.gif",
  "1336",
  "exercise ball back extension with rotation",
  15
),
(
  7,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1744.gif",
  "1744",
  "exercise ball dip",
  17
),
(
  8,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1559.gif",
  "1559",
  "exercise ball hip flexor stretch",
  8
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1338.gif",
  "1338",
  "exercise ball hug",
  15
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1339.gif",
  "1339",
  "exercise ball lat stretch",
  10
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1341.gif",
  "1341",
  "exercise ball lower back stretch(pyramid)",
  10
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1342.gif",
  "1342",
  "exercise ball lying side lat stretch",
  10
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1382.gif",
  "1382",
  "exercise ball on the wall calf raise",
  4
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3241.gif",
  "3241",
  "exercise ball on the wall calf raise(tennis ball between ankles)",
  4
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3240.gif",
  "3240",
  "exercise ball on the wall calf raise(tennis ball between knees)",
  4
),
(
  8,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1416.gif",
  "1416",
  "exercise ball one leg prone lower body rotation",
  8
),
(
  8,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1417.gif",
  "1417",
  "exercise ball one legged diagonal kick hamstring curl",
  8
),
(
  2,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1296.gif",
  "1296",
  "exercise ball pike push up",
  12
),
(
  0,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1343.gif",
  "1343",
  "exercise ball prone leg raise",
  15
),
(
  8,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1560.gif",
  "1560",
  "exercise ball seated hamstring stretch",
  9
),
(
  7,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1745.gif",
  "1745",
  "exercise ball seated triceps stretch",
  17
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/1746.gif",
  "1746",
  "exercise ball supine triceps extension",
  17
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1747.gif",
  "1747",
  "ez bar french press on exercise ball",
  17
),
(
  0,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/3010.gif",
  "3010",
  "ez bar lying bent arms pullover",
  10
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1748.gif",
  "1748",
  "ez bar lying close grip triceps extension behind head",
  17
),
(
  0,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1344.gif",
  "1344",
  "ez bar reverse grip bent over row",
  18
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1682.gif",
  "1682",
  "ez bar seated close grip concentration curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1749.gif",
  "1749",
  "ez bar standing french press",
  17
),
(
  6,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0445.gif",
  "0445",
  "ez barbell anti gravity press",
  6
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1627.gif",
  "1627",
  "ez barbell close grip preacher curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0446.gif",
  "0446",
  "ez barbell close-grip curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0447.gif",
  "0447",
  "ez barbell curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0448.gif",
  "0448",
  "ez barbell decline close grip face press",
  17
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/2186.gif",
  "2186",
  "ez barbell decline triceps extension",
  17
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0449.gif",
  "0449",
  "ez barbell incline triceps extension",
  17
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0450.gif",
  "0450",
  "ez barbell jm bench press",
  17
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0451.gif",
  "0451",
  "ez barbell reverse grip curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0452.gif",
  "0452",
  "ez barbell reverse grip preacher curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1458.gif",
  "1458",
  "ez barbell seated curls",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0453.gif",
  "0453",
  "ez barbell seated triceps extension",
  17
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/0454.gif",
  "0454",
  "ez barbell spider curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/1628.gif",
  "1628",
  "ez barbell spider curl",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/2404.gif",
  "2404",
  "ez-bar biceps curl(with arm blaster)",
  3
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/2432.gif",
  "2432",
  "ez-bar close-grip bench press",
  17
),
(
  7,
  8,
  "http://d205bpvrqc9yn1.cloudfront.net/2741.gif",
  "2741",
  "ez-barbell standing wide grip biceps curl",
  3
),
(
  8,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/2133.gif",
  "2133",
  "farmers walk",
  13
),
(
  3,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0455.gif",
  "0455",
  "finger curls",
  7
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3303.gif",
  "3303",
  "flag",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0456.gif",
  "0456",
  "flexion leg sit up(bent knee)",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0457.gif",
  "0457",
  "flexion leg sit up(straight arm)",
  1
),
(
  2,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0458.gif",
  "0458",
  "floor fly(with barbell)",
  12
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0459.gif",
  "0459",
  "flutter kicks",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1472.gif",
  "1472",
  "forward jump",
  13
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3470.gif",
  "3470",
  "forward lunge(male)",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/3194.gif",
  "3194",
  "frankenstein squat",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2429.gif",
  "2429",
  "frog crunch",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3301.gif",
  "3301",
  "frog planche",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3296.gif",
  "3296",
  "front lever",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3295.gif",
  "3295",
  "front lever reps",
  18
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0464.gif",
  "0464",
  "front plank with twist",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3315.gif",
  "3315",
  "full maltese",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3299.gif",
  "3299",
  "full planche",
  1
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3327.gif",
  "3327",
  "full planche push-up",
  12
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0466.gif",
  "0466",
  "gironda sternum chin",
  10
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3561.gif",
  "3561",
  "glute bridge march",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3523.gif",
  "3523",
  "glute bridge two legs on bench(male)",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3193.gif",
  "3193",
  "glute-ham raise",
  9
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0467.gif",
  "0467",
  "gorilla chin",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0469.gif",
  "0469",
  "groin crunch",
  1
),
(
  4,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/1383.gif",
  "1383",
  "hack calf raise",
  4
),
(
  4,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/1384.gif",
  "1384",
  "hack one leg calf raise",
  4
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3221.gif",
  "3221",
  "half knee bends(male)",
  5
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3202.gif",
  "3202",
  "half sit-up(male)",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1511.gif",
  "1511",
  "hamstring stretch",
  9
),
(
  2,
  25,
  "http://d205bpvrqc9yn1.cloudfront.net/2139.gif",
  "2139",
  "hands bike",
  12
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3218.gif",
  "3218",
  "hands clasped circular toe touch(male)",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3215.gif",
  "3215",
  "hands reversed clasped circular toe touch(male)",
  8
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3302.gif",
  "3302",
  "handstand",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0471.gif",
  "0471",
  "handstand push-up",
  17
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1764.gif",
  "1764",
  "hanging leg hip raise",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0472.gif",
  "0472",
  "hanging leg raise",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1761.gif",
  "1761",
  "hanging oblique knee raise",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0473.gif",
  "0473",
  "hanging pike",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0474.gif",
  "0474",
  "hanging straight leg hip raise",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0475.gif",
  "0475",
  "hanging straight leg raise",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0476.gif",
  "0476",
  "hanging straight twisting leg hip raise",
  1
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3636.gif",
  "3636",
  "high knee against wall",
  5
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0484.gif",
  "0484",
  "hip raise(bent knee)",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1418.gif",
  "1418",
  "hug keens to chest",
  8
),
(
  2,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/3234.gif",
  "3234",
  "hyght dumbbell fly",
  12
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0489.gif",
  "0489",
  "hyperextension",
  15
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0488.gif",
  "0488",
  "hyperextension(on bench)",
  15
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3289.gif",
  "3289",
  "impossible dips",
  17
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1471.gif",
  "1471",
  "inchworm",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3698.gif",
  "3698",
  "inchworm v. 2",
  1
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0490.gif",
  "0490",
  "incline close-grip push-up",
  17
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0491.gif",
  "0491",
  "incline leg hip raise(leg straight)",
  1
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0492.gif",
  "0492",
  "incline push up depth jump",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0493.gif",
  "0493",
  "incline push-up",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3785.gif",
  "3785",
  "incline push-up(on box)",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0494.gif",
  "0494",
  "incline reverse grip push-up",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3011.gif",
  "3011",
  "incline scapula push up",
  14
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0495.gif",
  "0495",
  "incline twisting sit-up",
  1
),
(
  8,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/1564.gif",
  "1564",
  "intermediate hip flexor and quad stretch",
  13
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0496.gif",
  "0496",
  "inverse leg curl(bench support)",
  9
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2400.gif",
  "2400",
  "inverse leg curl(on pull-up cable machine)",
  9
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0499.gif",
  "0499",
  "inverted row",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2300.gif",
  "2300",
  "inverted row bent knees",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2298.gif",
  "2298",
  "inverted row on bench",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0497.gif",
  "0497",
  "inverted row v. 2",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0498.gif",
  "0498",
  "inverted row with straps",
  18
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1419.gif",
  "1419",
  "iron cross stretch",
  8
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1297.gif",
  "1297",
  "isometric chest squeeze",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0500.gif",
  "0500",
  "isometric wipers",
  12
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0501.gif",
  "0501",
  "jack burpee",
  5
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3224.gif",
  "3224",
  "jack jump(male)",
  5
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0507.gif",
  "0507",
  "jackknife sit-up",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0508.gif",
  "0508",
  "janda sit-up",
  1
),
(
  1,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/2612.gif",
  "2612",
  "jump rope",
  5
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0514.gif",
  "0514",
  "jump squat",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0513.gif",
  "0513",
  "jump squat v. 2",
  8
),
(
  9,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0517.gif",
  "0517",
  "kettlebell advanced windmill",
  1
),
(
  3,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0518.gif",
  "0518",
  "kettlebell alternating hang clean",
  7
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0520.gif",
  "0520",
  "kettlebell alternating press",
  6
),
(
  2,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0519.gif",
  "0519",
  "kettlebell alternating press on floor",
  12
),
(
  0,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0521.gif",
  "0521",
  "kettlebell alternating renegade row",
  18
),
(
  0,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0522.gif",
  "0522",
  "kettlebell alternating row",
  18
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0523.gif",
  "0523",
  "kettlebell arnold press",
  6
),
(
  9,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0524.gif",
  "0524",
  "kettlebell bent press",
  1
),
(
  7,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0525.gif",
  "0525",
  "kettlebell bottoms up clean from the hang position",
  3
),
(
  7,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0526.gif",
  "0526",
  "kettlebell double alternating hang clean",
  3
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0527.gif",
  "0527",
  "kettlebell double jerk",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0528.gif",
  "0528",
  "kettlebell double push press",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0529.gif",
  "0529",
  "kettlebell double snatch",
  6
),
(
  9,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0530.gif",
  "0530",
  "kettlebell double windmill",
  1
),
(
  2,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0531.gif",
  "0531",
  "kettlebell extended range one arm press on floor",
  12
),
(
  9,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0532.gif",
  "0532",
  "kettlebell figure 8",
  1
),
(
  8,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0533.gif",
  "0533",
  "kettlebell front squat",
  8
),
(
  8,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0534.gif",
  "0534",
  "kettlebell goblet squat",
  8
),
(
  8,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0535.gif",
  "0535",
  "kettlebell hang clean",
  9
),
(
  8,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0536.gif",
  "0536",
  "kettlebell lunge pass through",
  8
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0537.gif",
  "0537",
  "kettlebell one arm clean and jerk",
  6
),
(
  2,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/1298.gif",
  "1298",
  "kettlebell one arm floor press",
  12
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0538.gif",
  "0538",
  "kettlebell one arm jerk",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0539.gif",
  "0539",
  "kettlebell one arm military press to the side",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0540.gif",
  "0540",
  "kettlebell one arm push press",
  6
),
(
  0,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0541.gif",
  "0541",
  "kettlebell one arm row",
  18
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0542.gif",
  "0542",
  "kettlebell one arm snatch",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0543.gif",
  "0543",
  "kettlebell pirate supper legs",
  6
),
(
  8,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0544.gif",
  "0544",
  "kettlebell pistol squat",
  8
),
(
  2,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0545.gif",
  "0545",
  "kettlebell plyo push-up",
  12
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0546.gif",
  "0546",
  "kettlebell seated press",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/1438.gif",
  "1438",
  "kettlebell seated two arm military press",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0547.gif",
  "0547",
  "kettlebell seesaw press",
  6
),
(
  0,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0548.gif",
  "0548",
  "kettlebell sumo high pull",
  16
),
(
  8,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0549.gif",
  "0549",
  "kettlebell swing",
  8
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0550.gif",
  "0550",
  "kettlebell thruster",
  6
),
(
  8,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0551.gif",
  "0551",
  "kettlebell turkish get up(squat style)",
  8
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0552.gif",
  "0552",
  "kettlebell two arm clean",
  6
),
(
  6,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0553.gif",
  "0553",
  "kettlebell two arm military press",
  6
),
(
  0,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/1345.gif",
  "1345",
  "kettlebell two arm row",
  18
),
(
  9,
  10,
  "http://d205bpvrqc9yn1.cloudfront.net/0554.gif",
  "0554",
  "kettlebell windmill",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0555.gif",
  "0555",
  "kick out sit",
  9
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0558.gif",
  "0558",
  "kipping muscle up",
  10
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3640.gif",
  "3640",
  "knee touch crunch",
  1
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/1420.gif",
  "1420",
  "kneeling jump squat",
  8
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1346.gif",
  "1346",
  "kneeling lat stretch",
  10
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3239.gif",
  "3239",
  "kneeling plank tap shoulder(male)",
  1
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3211.gif",
  "3211",
  "kneeling push-up(male)",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3288.gif",
  "3288",
  "korean dips",
  12
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3418.gif",
  "3418",
  "l-pull-up",
  10
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3419.gif",
  "3419",
  "l-sit on floor",
  1
),
(
  9,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0562.gif",
  "0562",
  "landmine 180",
  1
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/3237.gif",
  "3237",
  "landmine lateral raise",
  6
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3300.gif",
  "3300",
  "lean planche",
  1
),
(
  6,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2271.gif",
  "2271",
  "left hook. boxing",
  6
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0570.gif",
  "0570",
  "leg pull in flat bench",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1576.gif",
  "1576",
  "leg up hamstring stretch",
  9
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2287.gif",
  "2287",
  "lever alternate leg press",
  13
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0571.gif",
  "0571",
  "lever alternating narrow grip seated row",
  18
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0572.gif",
  "0572",
  "lever assisted chin-up",
  10
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0573.gif",
  "0573",
  "lever back extension",
  15
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0574.gif",
  "0574",
  "lever bent over row",
  18
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/3200.gif",
  "3200",
  "lever bent-over row with v-bar",
  18
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0575.gif",
  "0575",
  "lever bicep curl",
  3
),
(
  4,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2289.gif",
  "2289",
  "lever calf press",
  4
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0577.gif",
  "0577",
  "lever chest press",
  12
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0576.gif",
  "0576",
  "lever chest press",
  12
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1455.gif",
  "1455",
  "lever chest press v. 2",
  12
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0578.gif",
  "0578",
  "lever deadlift",
  8
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1300.gif",
  "1300",
  "lever decline chest press",
  12
),
(
  4,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1253.gif",
  "1253",
  "lever donkey calf raise",
  4
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0579.gif",
  "0579",
  "lever front pulldown",
  10
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0580.gif",
  "0580",
  "lever gripless shrug",
  16
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1439.gif",
  "1439",
  "lever gripless shrug v. 2",
  16
),
(
  3,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2288.gif",
  "2288",
  "lever gripper hands",
  7
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1615.gif",
  "1615",
  "lever hammer grip preacher curl",
  3
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0581.gif",
  "0581",
  "lever high row",
  18
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2286.gif",
  "2286",
  "lever hip extension v. 2",
  8
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2611.gif",
  "2611",
  "lever horizontal one leg press",
  8
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1299.gif",
  "1299",
  "lever incline chest press",
  12
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1479.gif",
  "1479",
  "lever incline chest press v. 2",
  12
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0582.gif",
  "0582",
  "lever kneeling leg curl",
  9
),
(
  9,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0583.gif",
  "0583",
  "lever kneeling twist",
  1
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0584.gif",
  "0584",
  "lever lateral raise",
  6
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0585.gif",
  "0585",
  "lever leg extension",
  13
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0586.gif",
  "0586",
  "lever lying leg curl",
  9
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/3195.gif",
  "3195",
  "lever lying two-one leg curl",
  9
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0587.gif",
  "0587",
  "lever military press",
  6
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0588.gif",
  "0588",
  "lever narrow grip seated row",
  18
),
(
  0,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0589.gif",
  "0589",
  "lever one arm bent over row",
  18
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1356.gif",
  "1356",
  "lever one arm lateral high row",
  18
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1347.gif",
  "1347",
  "lever one arm lateral wide pulldown",
  10
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0590.gif",
  "0590",
  "lever one arm shoulder press",
  6
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0591.gif",
  "0591",
  "lever overhand triceps dip",
  17
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0592.gif",
  "0592",
  "lever preacher curl",
  3
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1614.gif",
  "1614",
  "lever preacher curl v. 2",
  3
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2285.gif",
  "2285",
  "lever pullover",
  10
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2736.gif",
  "2736",
  "lever reverse grip lateral pulldown",
  10
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1616.gif",
  "1616",
  "lever reverse grip preacher curl",
  3
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1348.gif",
  "1348",
  "lever reverse grip vertical row",
  18
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0593.gif",
  "0593",
  "lever reverse hyperextension",
  8
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1349.gif",
  "1349",
  "lever reverse t-bar row",
  18
),
(
  4,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2315.gif",
  "2315",
  "lever rotary calf",
  4
),
(
  4,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2335.gif",
  "2335",
  "lever seated calf press",
  4
),
(
  4,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0594.gif",
  "0594",
  "lever seated calf raise",
  4
),
(
  9,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1452.gif",
  "1452",
  "lever seated crunch",
  1
),
(
  9,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0595.gif",
  "0595",
  "lever seated crunch(chest pad)",
  1
),
(
  9,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/3760.gif",
  "3760",
  "lever seated crunch v. 2",
  1
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1451.gif",
  "1451",
  "lever seated dip",
  17
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0596.gif",
  "0596",
  "lever seated fly",
  12
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/3759.gif",
  "3759",
  "lever seated good morning",
  8
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0597.gif",
  "0597",
  "lever seated hip abduction",
  0
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0598.gif",
  "0598",
  "lever seated hip adduction",
  2
),
(
  8,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0599.gif",
  "0599",
  "lever seated leg curl",
  9
),
(
  9,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0600.gif",
  "0600",
  "lever seated leg raise crunch",
  1
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0602.gif",
  "0602",
  "lever seated reverse fly",
  6
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0601.gif",
  "0601",
  "lever seated reverse fly(parallel grip)",
  6
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1350.gif",
  "1350",
  "lever seated row",
  18
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1454.gif",
  "1454",
  "lever seated shoulder press",
  6
),
(
  4,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1385.gif",
  "1385",
  "lever seated squat calf raise on leg press machine",
  4
),
(
  9,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1453.gif",
  "1453",
  "lever seated twist",
  1
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0603.gif",
  "0603",
  "lever shoulder press",
  6
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0869.gif",
  "0869",
  "lever shoulder press  v. 2",
  6
),
(
  6,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/2318.gif",
  "2318",
  "lever shoulder press  v. 3",
  6
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0604.gif",
  "0604",
  "lever shrug",
  16
),
(
  4,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0605.gif",
  "0605",
  "lever standing calf raise",
  4
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/3758.gif",
  "3758",
  "lever standing chest press",
  12
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0606.gif",
  "0606",
  "lever t bar row",
  18
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1351.gif",
  "1351",
  "lever t-bar reverse grip row",
  18
),
(
  7,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0607.gif",
  "0607",
  "lever triceps extension",
  17
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1313.gif",
  "1313",
  "lever unilateral row",
  18
),
(
  0,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/0609.gif",
  "0609",
  "london bridge",
  18
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3013.gif",
  "3013",
  "low glute bridge on floor",
  8
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1352.gif",
  "1352",
  "lower back curl",
  15
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3582.gif",
  "3582",
  "lunge with jump",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1688.gif",
  "1688",
  "lunge with twist",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0613.gif",
  "0613",
  "lying(side) quads stretch",
  13
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2312.gif",
  "2312",
  "lying elbow to knee",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0620.gif",
  "0620",
  "lying leg raise flat bench",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0865.gif",
  "0865",
  "lying leg-hip raise",
  1
),
(
  2,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/1301.gif",
  "1301",
  "machine inner chest press",
  12
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0624.gif",
  "0624",
  "march sit(wall)",
  8
),
(
  0,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1353.gif",
  "1353",
  "medicine ball catch and overhead throw",
  10
),
(
  2,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1302.gif",
  "1302",
  "medicine ball chest pass",
  12
),
(
  2,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1303.gif",
  "1303",
  "medicine ball chest push from 3 point stance",
  12
),
(
  2,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1304.gif",
  "1304",
  "medicine ball chest push multiple response",
  12
),
(
  2,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1305.gif",
  "1305",
  "medicine ball chest push single response",
  12
),
(
  2,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1312.gif",
  "1312",
  "medicine ball chest push with run release",
  12
),
(
  7,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1701.gif",
  "1701",
  "medicine ball close grip push up",
  17
),
(
  0,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1354.gif",
  "1354",
  "medicine ball overhead slam",
  18
),
(
  7,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/1750.gif",
  "1750",
  "medicine ball supine chest throw",
  17
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0627.gif",
  "0627",
  "mixed grip chin-up",
  10
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3217.gif",
  "3217",
  "modified hindu push-up(male)",
  12
),
(
  3,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1421.gif",
  "1421",
  "modified push up to lower arms",
  7
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0628.gif",
  "0628",
  "monster walk",
  8
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0630.gif",
  "0630",
  "mountain climber",
  5
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0631.gif",
  "0631",
  "muscle up",
  10
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1401.gif",
  "1401",
  "muscle-up(on vertical bar)",
  10
),
(
  7,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/2328.gif",
  "2328",
  "narrow push-up on exercise ball",
  17
),
(
  5,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1403.gif",
  "1403",
  "neck side stretch",
  11
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0634.gif",
  "0634",
  "negative crunch",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1495.gif",
  "1495",
  "oblique crunch v. 2",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0635.gif",
  "0635",
  "oblique crunches floor",
  1
),
(
  7,
  13,
  "http://d205bpvrqc9yn1.cloudfront.net/0636.gif",
  "0636",
  "olympic barbell hammer curl",
  3
),
(
  7,
  13,
  "http://d205bpvrqc9yn1.cloudfront.net/0637.gif",
  "0637",
  "olympic barbell triceps extension",
  17
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1355.gif",
  "1355",
  "one arm against wall",
  10
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0638.gif",
  "0638",
  "one arm chin-up",
  10
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0639.gif",
  "0639",
  "one arm dip",
  17
),
(
  9,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/0640.gif",
  "0640",
  "one arm slam(with medicine ball)",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1773.gif",
  "1773",
  "one arm towel row",
  18
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1386.gif",
  "1386",
  "one leg donkey calf raise",
  4
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1387.gif",
  "1387",
  "one leg floor calf raise",
  4
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1476.gif",
  "1476",
  "one leg squat",
  8
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0641.gif",
  "0641",
  "otis up",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0642.gif",
  "0642",
  "outside leg kick push-up",
  8
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0643.gif",
  "0643",
  "overhead triceps stretch",
  17
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3147.gif",
  "3147",
  "pelvic tilt",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1422.gif",
  "1422",
  "pelvic tilt into bridge",
  8
),
(
  4,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/1388.gif",
  "1388",
  "peroneals stretch",
  4
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3662.gif",
  "3662",
  "pike-to-cobra push-up",
  8
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1306.gif",
  "1306",
  "plyo push up",
  12
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1687.gif",
  "1687",
  "posterior step to overhead reach",
  1
),
(
  4,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/1389.gif",
  "1389",
  "posterior tibialis stretch",
  4
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3119.gif",
  "3119",
  "potty squat",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3132.gif",
  "3132",
  "potty squat with support",
  8
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0648.gif",
  "0648",
  "power clean",
  9
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3665.gif",
  "3665",
  "power point plank",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3203.gif",
  "3203",
  "prisoner half sit-up(male)",
  1
),
(
  9,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/1707.gif",
  "1707",
  "prone twist on stability ball",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0651.gif",
  "0651",
  "pull up(neutral grip)",
  10
),
(
  9,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/0650.gif",
  "0650",
  "pull-in(on stability ball)",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0652.gif",
  "0652",
  "pull-up",
  10
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1689.gif",
  "1689",
  "push and pull bodyweight",
  12
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3638.gif",
  "3638",
  "push to run",
  5
),
(
  2,
  4,
  "http://d205bpvrqc9yn1.cloudfront.net/1307.gif",
  "1307",
  "push up on bosu ball",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0662.gif",
  "0662",
  "push-up",
  12
),
(
  2,
  4,
  "http://d205bpvrqc9yn1.cloudfront.net/0653.gif",
  "0653",
  "push-up(bosu ball)",
  12
),
(
  2,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/0655.gif",
  "0655",
  "push-up(on stability ball)",
  12
),
(
  2,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/0656.gif",
  "0656",
  "push-up(on stability ball)",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0659.gif",
  "0659",
  "push-up(wall)",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0658.gif",
  "0658",
  "push-up(wall) v. 2",
  12
),
(
  7,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0660.gif",
  "0660",
  "push-up close-grip off dumbbell",
  17
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0661.gif",
  "0661",
  "push-up inside leg kick",
  8
),
(
  2,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/0663.gif",
  "0663",
  "push-up medicine ball",
  12
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1467.gif",
  "1467",
  "push-up on lower arms",
  17
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3145.gif",
  "3145",
  "push-up plus",
  12
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0664.gif",
  "0664",
  "push-up to side plank",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3533.gif",
  "3533",
  13,
  13
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3201.gif",
  "3201",
  "quarter sit-up",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3552.gif",
  "3552",
  "quick feet v. 2",
  13
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0666.gif",
  "0666",
  "raise single arm push-up",
  12
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0668.gif",
  "0668",
  "rear decline bridge",
  8
),
(
  6,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0669.gif",
  "0669",
  "rear deltoid stretch",
  6
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0670.gif",
  "0670",
  "rear pull-up",
  10
),
(
  8,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/1582.gif",
  "1582",
  "reclining big toe pose with rope",
  9
),
(
  8,
  14,
  "http://d205bpvrqc9yn1.cloudfront.net/3236.gif",
  "3236",
  "resistance band hip thrusts on knees(female)",
  8
),
(
  8,
  14,
  "http://d205bpvrqc9yn1.cloudfront.net/3007.gif",
  "3007",
  "resistance band leg extension",
  13
),
(
  7,
  14,
  "http://d205bpvrqc9yn1.cloudfront.net/3123.gif",
  "3123",
  "resistance band seated biceps curl",
  3
),
(
  2,
  14,
  "http://d205bpvrqc9yn1.cloudfront.net/3124.gif",
  "3124",
  "resistance band seated chest press",
  12
),
(
  8,
  14,
  "http://d205bpvrqc9yn1.cloudfront.net/3006.gif",
  "3006",
  "resistance band seated hip abduction",
  0
),
(
  6,
  14,
  "http://d205bpvrqc9yn1.cloudfront.net/3122.gif",
  "3122",
  "resistance band seated shoulder press",
  6
),
(
  0,
  14,
  "http://d205bpvrqc9yn1.cloudfront.net/3144.gif",
  "3144",
  "resistance band seated straight back row",
  18
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0872.gif",
  "0872",
  "reverse crunch",
  1
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0672.gif",
  "0672",
  "reverse dip",
  17
),
(
  0,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0673.gif",
  "0673",
  "reverse grip machine lat pulldown",
  10
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0674.gif",
  "0674",
  "reverse grip pull-up",
  10
),
(
  8,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/0675.gif",
  "0675",
  "reverse hyper extension(on stability ball)",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1423.gif",
  "1423",
  "reverse hyper on flat bench",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3663.gif",
  "3663",
  "reverse plank with leg lift",
  1
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0677.gif",
  "0677",
  "ring dips",
  17
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2571.gif",
  "2571",
  "rocking frog stretch",
  8
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0678.gif",
  "0678",
  "rocky pull-up pulldown",
  10
),
(
  0,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2208.gif",
  "2208",
  "roller back stretch",
  15
),
(
  9,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2204.gif",
  "2204",
  "roller body saw",
  1
),
(
  8,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2205.gif",
  "2205",
  "roller hip lat stretch",
  8
),
(
  8,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2202.gif",
  "2202",
  "roller hip stretch",
  8
),
(
  9,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2206.gif",
  "2206",
  "roller reverse crunch",
  1
),
(
  2,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2203.gif",
  "2203",
  "roller seated shoulder flexor depresor retractor",
  12
),
(
  2,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2209.gif",
  "2209",
  "roller seated single leg shoulder flexor depresor retractor",
  12
),
(
  0,
  15,
  "http://d205bpvrqc9yn1.cloudfront.net/2207.gif",
  "2207",
  "roller side lat stretch",
  10
),
(
  0,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/0680.gif",
  "0680",
  "rope climb",
  18
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0685.gif",
  "0685",
  "run",
  5
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0684.gif",
  "0684",
  "run(equipment)",
  5
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1585.gif",
  "1585",
  "runners stretch",
  9
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0687.gif",
  "0687",
  "russian twist",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3012.gif",
  "3012",
  "scapula dips",
  16
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3021.gif",
  "3021",
  "scapula push-up",
  14
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0688.gif",
  "0688",
  "scapular pull-up",
  16
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3219.gif",
  "3219",
  "scissor jumps(male)",
  5
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1390.gif",
  "1390",
  "seated calf stretch(male)",
  4
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1424.gif",
  "1424",
  "seated glute stretch",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0689.gif",
  "0689",
  "seated leg raise",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0690.gif",
  "0690",
  "seated lower back stretch",
  10
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2567.gif",
  "2567",
  "seated piriformis stretch",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0691.gif",
  "0691",
  "seated side crunch(wall)",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1587.gif",
  "1587",
  "seated wide angle pose sequence",
  9
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0697.gif",
  "0697",
  "self assisted inverse leg curl",
  9
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1766.gif",
  "1766",
  "self assisted inverse leg curl",
  9
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0696.gif",
  "0696",
  "self assisted inverse leg curl(on floor)",
  9
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3222.gif",
  "3222",
  "semi squat jump(male)",
  5
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3656.gif",
  "3656",
  "short stride run",
  5
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1763.gif",
  "1763",
  "shoulder grip pull-up",
  10
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3699.gif",
  "3699",
  "shoulder tap",
  1
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0699.gif",
  "0699",
  "shoulder tap push-up",
  12
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1774.gif",
  "1774",
  "side bridge hip abduction",
  0
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0705.gif",
  "0705",
  "side bridge v. 2",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0709.gif",
  "0709",
  "side hip(on parallel bars)",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0710.gif",
  "0710",
  "side hip abduction",
  0
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1358.gif",
  "1358",
  "side lying floor stretch",
  10
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3667.gif",
  "3667",
  "side lying hip adduction(male)",
  2
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1775.gif",
  "1775",
  "side plank hip adduction",
  2
),
(
  5,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0716.gif",
  "0716",
  "side push neck stretch",
  11
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0717.gif",
  "0717",
  "side push-up",
  17
),
(
  3,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0721.gif",
  "0721",
  "side wrist pull stretch",
  7
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0720.gif",
  "0720",
  "side-to-side chin",
  10
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3213.gif",
  "3213",
  "side-to-side toe touch(male)",
  1
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0725.gif",
  "0725",
  "single arm push-up",
  12
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3645.gif",
  "3645",
  "single leg bridge with outstretched leg",
  8
),
(
  4,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0727.gif",
  "0727",
  "single leg calf raise(on a dumbbell)",
  4
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0730.gif",
  "0730",
  "single leg platform slide",
  9
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1759.gif",
  "1759",
  "single leg squat(pistol) male",
  8
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1489.gif",
  "1489",
  "sissy squat",
  13
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0735.gif",
  "0735",
  "sit-up v. 2",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3679.gif",
  "3679",
  "sit-up with arms on chest",
  1
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3361.gif",
  "3361",
  "skater hops",
  5
),
(
  7,
  17,
  "http://d205bpvrqc9yn1.cloudfront.net/2142.gif",
  "2142",
  "ski ergometer",
  17
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3671.gif",
  "3671",
  "ski step",
  5
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3304.gif",
  "3304",
  "skin the cat",
  18
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/1425.gif",
  "1425",
  "sled 45 degrees one leg press",
  8
),
(
  4,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/0738.gif",
  "0738",
  "sled 45в° calf press",
  4
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/0739.gif",
  "0739",
  "sled 45в° leg press",
  8
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/1464.gif",
  "1464",
  "sled 45в° leg press(back pov)",
  8
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/1463.gif",
  "1463",
  "sled 45в° leg press(side pov)",
  8
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/0740.gif",
  "0740",
  "sled 45в° leg wide press",
  8
),
(
  4,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/1391.gif",
  "1391",
  "sled calf press on leg press",
  4
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/0741.gif",
  "0741",
  "sled closer hack squat",
  8
),
(
  4,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/0742.gif",
  "0742",
  "sled forward angled calf raise",
  4
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/0743.gif",
  "0743",
  "sled hack squat",
  8
),
(
  4,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/2334.gif",
  "2334",
  "sled lying calf press",
  4
),
(
  8,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/0744.gif",
  "0744",
  "sled lying squat",
  8
),
(
  4,
  18,
  "http://d205bpvrqc9yn1.cloudfront.net/1392.gif",
  "1392",
  "sled one leg calf press on leg press",
  4
),
(
  9,
  9,
  "http://d205bpvrqc9yn1.cloudfront.net/1496.gif",
  "1496",
  "sledge hammer",
  1
),
(
  0,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0746.gif",
  "0746",
  "smith back shrug",
  16
),
(
  6,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0747.gif",
  "0747",
  "smith behind neck press",
  6
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0748.gif",
  "0748",
  "smith bench press",
  12
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0749.gif",
  "0749",
  "smith bent knee good morning",
  8
),
(
  0,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1359.gif",
  "1359",
  "smith bent over row",
  18
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0750.gif",
  "0750",
  "smith chair squat",
  13
),
(
  7,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0751.gif",
  "0751",
  "smith close-grip bench press",
  17
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0752.gif",
  "0752",
  "smith deadlift",
  8
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0753.gif",
  "0753",
  "smith decline bench press",
  12
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0754.gif",
  "0754",
  "smith decline reverse-grip press",
  12
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1433.gif",
  "1433",
  "smith front squat(clean grip)",
  8
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/3281.gif",
  "3281",
  "smith full squat",
  8
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0755.gif",
  "0755",
  "smith hack squat",
  8
),
(
  9,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0756.gif",
  "0756",
  "smith hip raise",
  1
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0757.gif",
  "0757",
  "smith incline bench press",
  12
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0758.gif",
  "0758",
  "smith incline reverse-grip press",
  12
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0759.gif",
  "0759",
  "smith incline shoulder raises",
  14
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0760.gif",
  "0760",
  "smith leg press",
  8
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1434.gif",
  "1434",
  "smith low bar squat",
  8
),
(
  7,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1683.gif",
  "1683",
  "smith machine bicep curl",
  3
),
(
  7,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1625.gif",
  "1625",
  "smith machine decline close grip bench press",
  17
),
(
  7,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1752.gif",
  "1752",
  "smith machine incline tricep extension",
  17
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1626.gif",
  "1626",
  "smith machine reverse decline close grip bench press",
  12
),
(
  0,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0761.gif",
  "0761",
  "smith narrow row",
  18
),
(
  0,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1360.gif",
  "1360",
  "smith one arm row",
  18
),
(
  4,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1393.gif",
  "1393",
  "smith one leg floor calf raise",
  4
),
(
  6,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0762.gif",
  "0762",
  "smith rear delt row",
  6
),
(
  4,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0763.gif",
  "0763",
  "smith reverse calf raises",
  4
),
(
  4,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1394.gif",
  "1394",
  "smith reverse calf raises",
  4
),
(
  0,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1361.gif",
  "1361",
  "smith reverse grip bent over row",
  18
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0764.gif",
  "0764",
  "smith reverse-grip press",
  12
),
(
  4,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1395.gif",
  "1395",
  "smith seated one leg calf raise",
  4
),
(
  6,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0765.gif",
  "0765",
  "smith seated shoulder press",
  6
),
(
  3,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1426.gif",
  "1426",
  "smith seated wrist curl",
  7
),
(
  6,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0766.gif",
  "0766",
  "smith shoulder press",
  6
),
(
  0,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0767.gif",
  "0767",
  "smith shrug",
  16
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0768.gif",
  "0768",
  "smith single leg split squat",
  13
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0769.gif",
  "0769",
  "smith sprint lunge",
  8
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0770.gif",
  "0770",
  "smith squat",
  8
),
(
  3,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0771.gif",
  "0771",
  "smith standing back wrist curl",
  7
),
(
  6,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0772.gif",
  "0772",
  "smith standing behind head military press",
  6
),
(
  4,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0773.gif",
  "0773",
  "smith standing leg calf raise",
  4
),
(
  6,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0774.gif",
  "0774",
  "smith standing military press",
  6
),
(
  8,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/3142.gif",
  "3142",
  "smith sumo squat",
  8
),
(
  4,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1396.gif",
  "1396",
  "smith toe raise",
  4
),
(
  6,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/0775.gif",
  "0775",
  "smith upright row",
  6
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1308.gif",
  "1308",
  "smith wide grip bench press",
  12
),
(
  2,
  19,
  "http://d205bpvrqc9yn1.cloudfront.net/1309.gif",
  "1309",
  "smith wide grip decline bench press",
  12
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0776.gif",
  "0776",
  "snatch pull",
  13
),
(
  9,
  6,
  "http://d205bpvrqc9yn1.cloudfront.net/0777.gif",
  "0777",
  "spell caster",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1362.gif",
  "1362",
  "sphinx",
  15
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0778.gif",
  "0778",
  "spider crawl push up",
  8
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1363.gif",
  "1363",
  "spine stretch",
  15
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2329.gif",
  "2329",
  "spine twist",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2368.gif",
  "2368",
  "split squats",
  13
),
(
  8,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0786.gif",
  "0786",
  "squat jerk",
  13
),
(
  8,
  4,
  "http://d205bpvrqc9yn1.cloudfront.net/1705.gif",
  "1705",
  "squat on bosu ball",
  13
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1685.gif",
  "1685",
  "squat to overhead reach",
  13
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1686.gif",
  "1686",
  "squat to overhead reach with twist",
  13
),
(
  9,
  20,
  "http://d205bpvrqc9yn1.cloudfront.net/2297.gif",
  "2297",
  "stability ball crunch(full range hands behind head)",
  1
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3291.gif",
  "3291",
  "stalder press",
  17
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3669.gif",
  "3669",
  "standing archer",
  18
),
(
  6,
  2,
  "http://d205bpvrqc9yn1.cloudfront.net/0788.gif",
  "0788",
  "standing behind neck press",
  6
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1490.gif",
  "1490",
  "standing calf raise(on a staircase)",
  4
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1397.gif",
  "1397",
  "standing calves",
  4
),
(
  4,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1398.gif",
  "1398",
  "standing calves calf stretch",
  4
),
(
  8,
  16,
  "http://d205bpvrqc9yn1.cloudfront.net/1599.gif",
  "1599",
  "standing hamstring and calf stretch with strap",
  9
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0794.gif",
  "0794",
  "standing lateral stretch",
  10
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1364.gif",
  "1364",
  "standing pelvic tilt",
  15
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0795.gif",
  "0795",
  "standing single leg curl",
  9
),
(
  9,
  27,
  "http://d205bpvrqc9yn1.cloudfront.net/0796.gif",
  "0796",
  "standing wheel rollerout",
  1
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3223.gif",
  "3223",
  "star jump(male)",
  5
),
(
  1,
  21,
  "http://d205bpvrqc9yn1.cloudfront.net/2138.gif",
  "2138",
  "stationary bike run v. 3",
  5
),
(
  1,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/0798.gif",
  "0798",
  "stationary bike walk",
  5
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3314.gif",
  "3314",
  "straddle maltese",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3298.gif",
  "3298",
  "straddle planche",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1427.gif",
  "1427",
  "straight leg outer hip abductor",
  0
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0803.gif",
  "0803",
  "superman push-up",
  12
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0805.gif",
  "0805",
  "suspended abdominal fallout",
  1
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0806.gif",
  "0806",
  "suspended push-up",
  12
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0807.gif",
  "0807",
  "suspended reverse crunch",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0808.gif",
  "0808",
  "suspended row",
  18
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0809.gif",
  "0809",
  "suspended split squat",
  13
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3433.gif",
  "3433",
  "swimmer kicks v. 2(male)",
  8
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3318.gif",
  "3318",
  "swing 360",
  5
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1753.gif",
  "1753",
  "three bench dip",
  17
),
(
  8,
  23,
  "http://d205bpvrqc9yn1.cloudfront.net/2459.gif",
  "2459",
  "tire flip",
  8
),
(
  8,
  24,
  "http://d205bpvrqc9yn1.cloudfront.net/0811.gif",
  "0811",
  "trap bar deadlift",
  8
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0814.gif",
  "0814",
  "triceps dip",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0812.gif",
  "0812",
  "triceps dip(bench leg)",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0813.gif",
  "0813",
  "triceps dip(between benches)",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0815.gif",
  "0815",
  "triceps dips floor",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0816.gif",
  "0816",
  "triceps press",
  17
),
(
  7,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0817.gif",
  "0817",
  "triceps stretch",
  17
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0871.gif",
  "0871",
  "tuck crunch",
  1
),
(
  0,
  5,
  "http://d205bpvrqc9yn1.cloudfront.net/0818.gif",
  "0818",
  "twin handle parallel grip lat pulldown",
  10
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1466.gif",
  "1466",
  "twist hip lift",
  8
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2802.gif",
  "2802",
  "twisted leg raise",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2801.gif",
  "2801",
  "twisted leg raise(female)",
  1
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3231.gif",
  "3231",
  "two toe touch(male)",
  15
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1365.gif",
  "1365",
  "upper back stretch",
  18
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1366.gif",
  "1366",
  "upward facing dog",
  15
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3420.gif",
  "3420",
  "v-sit on floor",
  1
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0826.gif",
  "0826",
  "vertical leg raise(on parallel bars)",
  1
),
(
  1,
  7,
  "http://d205bpvrqc9yn1.cloudfront.net/2141.gif",
  "2141",
  "walk elliptical cross trainer",
  5
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3655.gif",
  "3655",
  "walking high knees lunge",
  5
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1460.gif",
  "1460",
  "walking lunge",
  8
),
(
  1,
  11,
  "http://d205bpvrqc9yn1.cloudfront.net/3666.gif",
  "3666",
  "walking on incline treadmill",
  5
),
(
  1,
  22,
  "http://d205bpvrqc9yn1.cloudfront.net/2311.gif",
  "2311",
  "walking on stepmill",
  5
),
(
  7,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0830.gif",
  "0830",
  "weighted bench dip",
  17
),
(
  0,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/2987.gif",
  "2987",
  "weighted close grip chin-up on dip cage",
  10
),
(
  8,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3643.gif",
  "3643",
  "weighted cossack squats(male)",
  8
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0832.gif",
  "0832",
  "weighted crunch",
  1
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3670.gif",
  "3670",
  "weighted decline sit-up",
  1
),
(
  4,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0833.gif",
  "0833",
  "weighted donkey calf raise",
  4
),
(
  2,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/1310.gif",
  "1310",
  "weighted drop push up",
  12
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/2135.gif",
  "2135",
  "weighted front plank",
  1
),
(
  6,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0834.gif",
  "0834",
  "weighted front raise",
  6
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0866.gif",
  "0866",
  "weighted hanging leg-hip raise",
  1
),
(
  0,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0835.gif",
  "0835",
  "weighted hyperextension(on stability ball)",
  15
),
(
  6,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3641.gif",
  "3641",
  "weighted kneeling step with swing",
  6
),
(
  8,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3644.gif",
  "3644",
  "weighted lunge with swing",
  8
),
(
  0,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3286.gif",
  "3286",
  "weighted muscle up",
  10
),
(
  0,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3312.gif",
  "3312",
  "weighted muscle up(on bar)",
  10
),
(
  0,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3290.gif",
  "3290",
  "weighted one hand pull up",
  10
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0840.gif",
  "0840",
  "weighted overhead crunch(on stability ball)",
  1
),
(
  0,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0841.gif",
  "0841",
  "weighted pull-up",
  10
),
(
  6,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0844.gif",
  "0844",
  "weighted round arm",
  6
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0846.gif",
  "0846",
  "weighted russian twist",
  1
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0845.gif",
  "0845",
  "weighted russian twist(legs up)",
  1
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/2371.gif",
  "2371",
  "weighted russian twist v. 2",
  1
),
(
  7,
  12,
  "http://d205bpvrqc9yn1.cloudfront.net/0847.gif",
  "0847",
  "weighted seated bicep curl(on stability ball)",
  3
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0849.gif",
  "0849",
  "weighted seated twist(on stability ball)",
  1
),
(
  9,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0850.gif",
  "0850",
  "weighted side bend(on stability ball)",
  1
),
(
  8,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0851.gif",
  "0851",
  "weighted sissy squat",
  13
),
(
  8,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0852.gif",
  "0852",
  "weighted squat",
  8
),
(
  7,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0853.gif",
  "0853",
  "weighted standing curl",
  3
),
(
  3,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0854.gif",
  "0854",
  "weighted standing hand squeeze",
  7
),
(
  2,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3313.gif",
  "3313",
  "weighted straight bar dip",
  12
),
(
  8,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/3642.gif",
  "3642",
  "weighted stretch lunge",
  8
),
(
  2,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0856.gif",
  "0856",
  "weighted svend press",
  12
),
(
  7,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/1754.gif",
  "1754",
  "weighted three bench dips",
  17
),
(
  7,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/1755.gif",
  "1755",
  "weighted tricep dips",
  17
),
(
  7,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/1767.gif",
  "1767",
  "weighted triceps dip on high parallel bars",
  17
),
(
  9,
  27,
  "http://d205bpvrqc9yn1.cloudfront.net/0857.gif",
  "0857",
  "wheel rollerout",
  1
),
(
  1,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/3637.gif",
  "3637",
  "wheel run",
  5
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1429.gif",
  "1429",
  "wide grip pull-up",
  10
),
(
  0,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1367.gif",
  "1367",
  "wide grip rear pull-up",
  10
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1311.gif",
  "1311",
  "wide hand push up",
  12
),
(
  2,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/2363.gif",
  "2363",
  "wide-grip chest dip on high parallel bars",
  12
),
(
  9,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/0858.gif",
  "0858",
  "wind sprints",
  1
),
(
  8,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1604.gif",
  "1604",
  "world greatest stretch",
  9
),
(
  3,
  3,
  "http://d205bpvrqc9yn1.cloudfront.net/1428.gif",
  "1428",
  "wrist circles",
  7
),
(
  3,
  26,
  "http://d205bpvrqc9yn1.cloudfront.net/0859.gif",
  "0859",
  "wrist rollerer",
  7
);

-- Down

DROP TABLE Exercises;
DROP TABLE Equipment;
DROP TABLE BodyParts;
DROP TABLE TargetMuscles;