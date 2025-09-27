/// Generates the medium-sized image URL for a book cover.
///
/// {@template generate_image_url}
/// This method builds a complete image URL for a book cover using the
/// [coverId] provided by the Open Library API.
/// The generated URL follows the Open Library Covers API format:
/// `https://covers.openlibrary.org/b/id/{coverId}-M.jpg`.
///
/// You can change the size suffix (`-S`, `-M`, `-L`) depending on the
/// desired image resolution.
/// {@endtemplate}
///
/// [coverId] - The unique numeric identifier of the book cover returned
/// by the Open Library API.
///
/// Returns a [String] representing the URL of the medium-sized
/// book cover image.
String generateImageUrl({required int coverId}) {
  return 'https://covers.openlibrary.org/b/id/$coverId-M.jpg';
}
