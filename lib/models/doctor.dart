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
    description:
        "A doctor is responsible for all sides of care of a patient. They diagnose, educate, and treat patients to ensure that they have the best possible care. A few of the main duties of a doctor are performing diagnostic tests, recommending specialists for patients, document patient's medical history, and educating patients.",
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
