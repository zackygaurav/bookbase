/// Generates a unique Hero tag for a book cover.
///
/// {@template get_unique_hero_tag}
/// This method is used to avoid the common Flutter error where multiple
/// [Hero] widgets share the same tag in a single route subtree.
/// By appending the [coverId] to a fixed prefix, it ensures that
/// each Hero tag is unique per book cover.
/// {@endtemplate}
///
/// [coverId] - The unique numeric identifier of the book cover.
///
/// Returns a [String] representing a unique Hero tag, for example:
/// `'hero_anim_id12345'`.
String getUniqueHeroTag({required int coverId}) {
  return 'hero_anim_id$coverId';
}
