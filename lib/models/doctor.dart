class Doctor {
  final String? name, title, description;
  final String? images;
  final int? experience;

  const Doctor({
    required this.name,
    required this.title,
    required this.images,
    required this.description,
    required this.experience,
  });
}

// Our demo Products

List<Doctor> doctorList = [
  const Doctor(
    name: "Dr Mahbeer",
    title: "General Physician",
    images: "assets/images/doc1.png",
    description: "He is a general Physician",
    experience: 5,
  ),
  const Doctor(
    name: "Dr Airaad",
    title: "Psychiatrist",
    images: "assets/images/doc2.png",
    description: "He is a Psychiatrist",
    experience: 12,
  ),
  const Doctor(
    name: "Dr Moomin",
    title: "Dermetologist",
    images: "assets/images/doc3.png",
    description: "He is a Dermetologist",
    experience: 6,
  ),
];
