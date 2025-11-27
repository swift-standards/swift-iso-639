// ISO_639.swift
// ISO 639
//
// ISO 639: Codes for the representation of names of languages

import Standards

/// ISO 639: Codes for the representation of names of languages
///
/// This namespace contains types implementing the ISO 639 standard for language codes.
///
/// ## Standard Versions
///
/// ISO 639 has multiple parts:
/// - **ISO 639-1**: Two-letter codes (e.g., "en", "zh", "ar")
/// - **ISO 639-2**: Three-letter codes (bibliographic and terminologic)
/// - **ISO 639-3**: Comprehensive three-letter codes for all languages
///
/// ## Architecture
///
/// This package provides refined types for language codes with validation:
/// - `LanguageCode`: Main language code type supporting both 2-letter and 3-letter codes
/// - `Alpha2`: Two-letter code (ISO 639-1)
/// - `Alpha3`: Three-letter code (ISO 639-2/3)
///
/// ## Design Principles
///
/// Following swift-standards patterns:
/// - **Refined types**: Validated language codes
/// - **Total functions**: Initializers with refined types cannot fail
/// - **Partial functions**: String initializers validate and can throw
/// - **Type safety**: Invalid codes are rejected at initialization
///
/// ## References
///
/// - [ISO 639-1](https://www.iso.org/iso-639-language-codes.html)
/// - [ISO 639-2](https://www.loc.gov/standards/iso639-2/)
/// - [ISO 639-3](https://iso639-3.sil.org/)
///
/// ## Example
///
/// ```swift
/// // From 2-letter code
/// let english = try ISO_639.LanguageCode("en")
/// print(english.alpha2)  // "en"
/// print(english.alpha3)  // "eng"
///
/// // From 3-letter code
/// let chinese = try ISO_639.LanguageCode("zho")
/// print(chinese.alpha2)  // "zh"
/// print(chinese.alpha3)  // "zho"
/// ```
public enum ISO_639 {
    // Namespace only - no instances
}
