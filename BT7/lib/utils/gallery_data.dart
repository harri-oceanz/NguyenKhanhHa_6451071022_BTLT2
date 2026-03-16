import '../models/gallery_image.dart';

List<GalleryImage> images = List.generate(
  8,
      (index) => GalleryImage("https://picsum.photos/300?random=$index"),
);