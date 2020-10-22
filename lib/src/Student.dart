class Student {
  int id;
  String name;
  String fName;
  String gender;
  String ph;
  String dob;
  String admissionDate;
  String className;
  String sectionName;
  String todayAttendance;
  String yesterdayAttendance;
  String feeStatus;

  Student(
      {this.id,
        this.name,
        this.fName,
        this.gender,
        this.ph,
        this.dob,
        this.admissionDate,
        this.className,
        this.sectionName,
        this.todayAttendance,
        this.yesterdayAttendance,
        this.feeStatus});

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['f_name'];
    gender = json['gender'];
    ph = json['ph'];
    dob = json['dob'];
    admissionDate = json['admissionDate'];
    className = json['className'];
    sectionName = json['sectionName'];
    todayAttendance = json['todayAttendance'];
    yesterdayAttendance = json['yesterdayAttendance'];
    feeStatus = json['feeStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['f_name'] = this.fName;
    data['gender'] = this.gender;
    data['ph'] = this.ph;
    data['dob'] = this.dob;
    data['admissionDate'] = this.admissionDate;
    data['className'] = this.className;
    data['sectionName'] = this.sectionName;
    data['todayAttendance'] = this.todayAttendance;
    data['yesterdayAttendance'] = this.yesterdayAttendance;
    data['feeStatus'] = this.feeStatus;
    return data;
  }
}