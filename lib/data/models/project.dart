class Project {
  final String name;
  final String imageUrl;
  final String description;
  final String? githubRepoLink;
  final String? previewLink;
  final String? googlePlay;
  final String? technologies;
  final String? fonctionality;
 

  const Project({
    required this.name,
    required this.imageUrl,
    required this.description,
    this.githubRepoLink,
    this.previewLink,
    this.googlePlay,
    this.technologies,
    this.fonctionality,
  });
}
