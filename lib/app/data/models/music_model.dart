import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MusicModel {
 final String name;
 final String description;
 final String imageUrl;
 final String audioUrl;
 bool isPlaying=false;
  MusicModel({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.audioUrl,
     this.isPlaying=false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'image_url': imageUrl,
      'audio_url': audioUrl,
      'isPlaying': isPlaying=false,
    };
  }

  factory MusicModel.fromMap(Map<String, dynamic> map) {
    return MusicModel(
      name: map['name'] as String,
      description: map['description'] as String,
      imageUrl: map['image_url'] as String,
      audioUrl: map['audio_url'] as String,
      isPlaying: false,
    );
  }

  String toJson() => json.encode(toMap());

  factory MusicModel.fromJson(String source) => MusicModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MusicModel(name: $name, description: $description, imageUrl: $imageUrl, audioUrl: $audioUrl, isPlaying=false: $isPlaying=false)';
  }
}
