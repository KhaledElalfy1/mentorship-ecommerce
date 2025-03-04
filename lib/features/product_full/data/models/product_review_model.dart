class ReviewModel {
  final String reviewerName;
  final String reviewerImage;
  final String review;
  final int timeAgo;
  final double rating;

  ReviewModel(
      {required this.reviewerName,
      required this.reviewerImage,
      required this.review,
      required this.timeAgo,
      required this.rating});
}
