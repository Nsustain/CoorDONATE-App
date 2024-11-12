
import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {

    int? id;
    final String name;
    final int numFollowers;
    final int numFollowing;
    final String profilePic;
    final String shortBio;
    final String ngoDescription;
    final String numberOfParticipants;
    final String previousWork;
    final String targetAudience;
    final String location;
    final String organizationType;

    ProfileEntity({
      required this.name,
      required this.numFollowers,
      required this.numFollowing,
      required this.profilePic,
      required this.shortBio,
      required this.ngoDescription,
      required this.numberOfParticipants,
      required this.previousWork,
      required this.targetAudience,
      required this.location, 
      required this.organizationType
    });

    @override
    List<Object?> get props => [id];

}