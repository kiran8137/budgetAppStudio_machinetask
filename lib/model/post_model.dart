class PostModel {
  final String userId;
  final String userName;
  final String postId;
  final String location;
  final String profileImage;
  final String description;
  final String isLiked;
  final String isFollowed;
  final String isSaved;
  final String images;
  final String likedCount;
  final String commentCount;
  final String firstLikeUserName;
  final String firstLikeProfile;
  final String uploadedDate;

  PostModel(
      {required this.userId,
      required this.userName,
      required this.postId,
      required this.location,
      required this.profileImage,
      required this.description,
      required this.isLiked,
      required this.isFollowed,
      required this.isSaved,
      required this.images,
      required this.likedCount,
      required this.commentCount,
      required this.firstLikeUserName,
      required this.firstLikeProfile,
      required this.uploadedDate
      });


      factory PostModel.fromJson(Map<dynamic,dynamic> json){
        return PostModel(
          userId: json[ "user_id"].toString() ?? "", 
          userName: json["username"].toString() ?? "",  
          postId: json["post_id"].toString() ?? "",  
          location:json["location"].toString() ?? "", 
          profileImage: json["profile_image"].toString() ?? "", 
          description: json["description"] .toString() ?? "",
          isLiked: json["isLiked"].toString() ?? "",  
          isFollowed: json["isFollowed"].toString() ?? "", 
          isSaved:json["isSaved"].toString() ?? "",  
          images: json["images"].toString() ?? "", 
          likedCount: json["Liked_count"].toString() ?? "", 
          commentCount: json["Comment_count"].toString() ?? "",
          firstLikeUserName: json["first_like_username"].toString() ?? "", 
          firstLikeProfile: json["first_like_profile_image"].toString() ?? "", 
          uploadedDate: json["uploaded_date"]

          );
      }
}
