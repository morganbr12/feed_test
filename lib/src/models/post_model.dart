import 'data/created_post.dart';

class CreatedPostModel {
  final List<CreatedPost> _postCreated = [
    const CreatedPost(
      creatorName: 'morgan',
      topic: 'Topic name',
      description: 'faskl mkmalkdsmf kma lkdsm akmsalkmfkdmf klmdsam kfm lkasm lksmdoalks mdkmd md im km iasdi mkf mianm m mo ma lkm  By default when using @freezed (but not @unfreezed), properties of type List/Map/Set are transformed to be immutable',
    ),
    const CreatedPost(
      creatorName: 'breezed',
      topic: 'topic name',
      description: 'faskl mkmalkdsmf kma lkdsm akmsalkmfkdmf klmdsam kfm lkasm lksmdoalks mdkmd md im km iasdi mkf mianm m mo ma lkm lt when using @freezed (but not @unfreezed), properties of type List/Map/S',
      imageUrl: 'assets/images/image1.jpg'
    ),
    const CreatedPost(
      creatorName: 'sammy',
      topic: 'topic name',
      description: 'faskl mkmalkdsmf kma lkdsm akmsalkmfkdmf klmdsam kfm lkasm lksmdoalks mdkmd md im km iasdi mkf mianm m mo ma lkm'
    ),
  ];

  List<CreatedPost> get postCreated {
    return [..._postCreated];
  }
}
