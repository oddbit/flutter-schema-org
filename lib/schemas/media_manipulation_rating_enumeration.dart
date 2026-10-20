// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/schema_serializable.dart';

/// Codes for use with the [SchemamediaAuthenticityCategory] property,
/// indicating the authenticity of a media object (in the context of how it
/// was published or shared). In general these codes are not mutually
/// exclusive, although some combinations (such as 'original' versus
/// 'transformed', 'edited' and 'staged') would be contradictory if applied
/// in the same [SchemaMediaReview]. Note that the application of these codes
/// is with regard to a piece of media shared or published in a particular
/// context.
/// See https://schema.org/MediaManipulationRatingEnumeration
enum SchemaMediaManipulationRatingEnumeration implements SchemaSerializable {
  /// Content coded 'missing context' in a [SchemaMediaReview], considered
  /// in the context of how it was published or shared.
  ///
  /// For a [SchemaVideoObject] to be 'missing context': Presenting
  /// unaltered video in an inaccurate manner that misrepresents the
  /// footage. For example, using incorrect dates or locations, altering
  /// the transcript or sharing brief clips from a longer video to mislead
  /// viewers. (A video rated 'original' can also be missing context.)
  ///
  /// For an [SchemaImageObject] to be 'missing context': Presenting
  /// unaltered images in an inaccurate manner to misrepresent the image
  /// and mislead the viewer. For example, a common tactic is using an
  /// unaltered image but saying it came from a different time or place.
  /// (An image rated 'original' can also be missing context.)
  ///
  /// For an [SchemaImageObject] with embedded text to be 'missing
  /// context': An unaltered image presented in an inaccurate manner to
  /// misrepresent the image and mislead the viewer. For example, a common
  /// tactic is using an unaltered image but saying it came from a
  /// different time or place. (An 'original' image with inaccurate text
  /// would generally fall in this category.)
  ///
  /// For an [SchemaAudioObject] to be 'missing context': Unaltered audio
  /// presented in an inaccurate manner that misrepresents it. For example,
  /// using incorrect dates or locations, or sharing brief clips from a
  /// longer recording to mislead viewers. (Audio rated “original” can also
  /// be missing context.)
  decontextualizedContent('https://schema.org/DecontextualizedContent'),

  /// Content coded 'edited or cropped content' in a [SchemaMediaReview],
  /// considered in the context of how it was published or shared.
  ///
  /// For a [SchemaVideoObject] to be 'edited or cropped content': The
  /// video has been edited or rearranged. This category applies to time
  /// edits, including editing multiple videos together to alter the story
  /// being told or editing out large portions from a video.
  ///
  /// For an [SchemaImageObject] to be 'edited or cropped content':
  /// Presenting a part of an image from a larger whole to mislead the
  /// viewer.
  ///
  /// For an [SchemaImageObject] with embedded text to be 'edited or
  /// cropped content': Presenting a part of an image from a larger whole
  /// to mislead the viewer.
  ///
  /// For an [SchemaAudioObject] to be 'edited or cropped content': The
  /// audio has been edited or rearranged. This category applies to time
  /// edits, including editing multiple audio clips together to alter the
  /// story being told or editing out large portions from the recording.
  editedOrCroppedContent('https://schema.org/EditedOrCroppedContent'),

  /// Content coded 'as original media content' in a [SchemaMediaReview],
  /// considered in the context of how it was published or shared.
  ///
  /// For a [SchemaVideoObject] to be 'original': No evidence the footage
  /// has been misleadingly altered or manipulated, though it may contain
  /// false or misleading claims.
  ///
  /// For an [SchemaImageObject] to be 'original': No evidence the image
  /// has been misleadingly altered or manipulated, though it may still
  /// contain false or misleading claims.
  ///
  /// For an [SchemaImageObject] with embedded text to be 'original': No
  /// evidence the image has been misleadingly altered or manipulated,
  /// though it may still contain false or misleading claims.
  ///
  /// For an [SchemaAudioObject] to be 'original': No evidence the audio
  /// has been misleadingly altered or manipulated, though it may contain
  /// false or misleading claims.
  originalMediaContent('https://schema.org/OriginalMediaContent'),

  /// Content coded 'satire or parody content' in a [SchemaMediaReview],
  /// considered in the context of how it was published or shared.
  ///
  /// For a [SchemaVideoObject] to be 'satire or parody content': A video
  /// that was created as political or humorous commentary and is presented
  /// in that context. (Reshares of satire/parody content that do not
  /// include relevant context are more likely to fall under the “missing
  /// context” rating.)
  ///
  /// For an [SchemaImageObject] to be 'satire or parody content': An image
  /// that was created as political or humorous commentary and is presented
  /// in that context. (Reshares of satire/parody content that do not
  /// include relevant context are more likely to fall under the “missing
  /// context” rating.)
  ///
  /// For an [SchemaImageObject] with embedded text to be 'satire or parody
  /// content': An image that was created as political or humorous
  /// commentary and is presented in that context. (Reshares of
  /// satire/parody content that do not include relevant context are more
  /// likely to fall under the “missing context” rating.)
  ///
  /// For an [SchemaAudioObject] to be 'satire or parody content': Audio
  /// that was created as political or humorous commentary and is presented
  /// in that context. (Reshares of satire/parody content that do not
  /// include relevant context are more likely to fall under the “missing
  /// context” rating.)
  satireOrParodyContent('https://schema.org/SatireOrParodyContent'),

  /// Content coded 'staged content' in a [SchemaMediaReview], considered
  /// in the context of how it was published or shared.
  ///
  /// For a [SchemaVideoObject] to be 'staged content': A video that has
  /// been created using actors or similarly contrived.
  ///
  /// For an [SchemaImageObject] to be 'staged content': An image that was
  /// created using actors or similarly contrived, such as a screenshot of
  /// a fake tweet.
  ///
  /// For an [SchemaImageObject] with embedded text to be 'staged content':
  /// An image that was created using actors or similarly contrived, such
  /// as a screenshot of a fake tweet.
  ///
  /// For an [SchemaAudioObject] to be 'staged content': Audio that has
  /// been created using actors or similarly contrived.
  stagedContent('https://schema.org/StagedContent'),

  /// Content coded 'transformed content' in a [SchemaMediaReview],
  /// considered in the context of how it was published or shared.
  ///
  /// For a [SchemaVideoObject] to be 'transformed content': or all of the
  /// video has been manipulated to transform the footage itself. This
  /// category includes using tools like the Adobe Suite to change the
  /// speed of the video, add or remove visual elements or dub audio.
  /// Deepfakes are also a subset of transformation.
  ///
  /// For an [SchemaImageObject] to be 'transformed content': Adding or
  /// deleting visual elements to give the image a different meaning with
  /// the intention to mislead.
  ///
  /// For an [SchemaImageObject] with embedded text to be 'transformed
  /// content': Adding or deleting visual elements to give the image a
  /// different meaning with the intention to mislead.
  ///
  /// For an [SchemaAudioObject] to be 'transformed content': Part or all
  /// of the audio has been manipulated to alter the words or sounds, or
  /// the audio has been synthetically generated, such as to create a
  /// sound-alike voice.
  transformedContent('https://schema.org/TransformedContent');

  /// Constructor for [SchemaMediaManipulationRatingEnumeration]
  const SchemaMediaManipulationRatingEnumeration(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaMediaManipulationRatingEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
