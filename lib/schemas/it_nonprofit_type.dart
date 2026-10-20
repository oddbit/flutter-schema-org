// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/nonprofit_type.dart';

/// ITNonprofitType: Non-profit organization type originating from Italy.
/// Most categories are drawn from the Italian Third Sector Code (Legislative
/// Decree No. 117 of 3 July 2017), although some Italian non-profit
/// entities, such as amateur sports entities, are primarily governed by
/// other legislation.
/// See https://schema.org/ITNonprofitType
enum SchemaITNonprofitType implements SchemaNonprofitType {
  /// ITAmateurSportsClubCharity: Non-profit type referring to Italian
  /// amateur sports clubs organized in corporate form (Ital. società
  /// sportiva dilettantistica or SSD), as distinct from amateur sports
  /// associations (Ital. associazione sportiva dilettantistica or ASD),
  /// governed primarily by Legislative Decree No. 36 of 28 February 2021,
  /// as amended, and registered in the national register of amateur sports
  /// activities established by Legislative Decree No. 39 of 28 February
  /// 2021. These entities are generally outside the Italian Third Sector
  /// unless also registered in the RUNTS.
  iTAmateurSportsClubCharity('https://schema.org/ITAmateurSportsClubCharity'),

  /// ITAssociativeNetworkCharity: Non-profit type referring to Italian
  /// associative networks (Ital. rete associativa), associations grouping
  /// a large number of Third Sector entities, governed by Article 41 and
  /// related provisions of Legislative Decree No. 117 of 3 July 2017, the
  /// Italian Third Sector Code.
  iTAssociativeNetworkCharity('https://schema.org/ITAssociativeNetworkCharity'),

  /// ITCooperativeCharity: Non-profit type referring to Italian social
  /// cooperatives (Ital. cooperativa sociale), governed primarily by Law
  /// 381 of 8 November 1991. Social cooperatives and their consortia
  /// qualify as social enterprises by operation of law under Article 1(4)
  /// of Legislative Decree No. 112 of 3 July 2017.
  @Deprecated(
      'Use [ITSocialCooperativeCharity]. See https://schema.org/ITCooperativeCharity')
  iTCooperativeCharity('https://schema.org/ITCooperativeCharity'),

  /// ITMutualAidCharity: Non-profit type referring to Italian mutual aid
  /// societies (Ital. società di mutuo soccorso or SOMS), governed by Law
  /// 3818 of 15 April 1886, in coordination with Articles 42 and following
  /// of Legislative Decree No. 117 of 3 July 2017, the Italian Third
  /// Sector Code.
  iTMutualAidCharity('https://schema.org/ITMutualAidCharity'),

  /// ITOtherThirdSectorEntityCharity: Non-profit type referring to other
  /// Italian Third Sector entities (Ital. Ente del Terzo settore or ETS)
  /// registered in the Registro unico nazionale del Terzo settore (RUNTS)
  /// under Article 4 of Legislative Decree No. 117 of 3 July 2017 that do
  /// not fall within one of the specifically enumerated Third Sector
  /// categories.
  iTOtherThirdSectorEntityCharity(
      'https://schema.org/ITOtherThirdSectorEntityCharity'),

  /// ITPhilanthropicEntityCharity: Non-profit type referring to Italian
  /// philanthropic entities (Ital. ente filantropico), constituted as
  /// recognized associations or foundations and governed by Articles 37
  /// and following of Legislative Decree No. 117 of 3 July 2017, the
  /// Italian Third Sector Code.
  iTPhilanthropicEntityCharity(
      'https://schema.org/ITPhilanthropicEntityCharity'),

  /// ITSocialCompanyCharity: Non-profit type referring to Italian social
  /// enterprises (Ital. impresa sociale), a status governed by Legislative
  /// Decree No. 112 of 3 July 2017, as amended. The status may be acquired
  /// by different types of private entities and is not limited to
  /// companies.
  @Deprecated(
      'Use [ITSocialEnterpriseCharity]. See https://schema.org/ITSocialCompanyCharity')
  iTSocialCompanyCharity('https://schema.org/ITSocialCompanyCharity'),

  /// ITSocialCooperativeCharity: Non-profit type referring to Italian
  /// social cooperatives (Ital. cooperativa sociale), governed primarily
  /// by Law 381 of 8 November 1991. Social cooperatives and their
  /// consortia qualify as social enterprises by operation of law under
  /// Article 1(4) of Legislative Decree No. 112 of 3 July 2017.
  iTSocialCooperativeCharity('https://schema.org/ITSocialCooperativeCharity'),

  /// ITSocialEnterpriseCharity: Non-profit type referring to Italian
  /// social enterprises (Ital. impresa sociale), a status governed by
  /// Legislative Decree No. 112 of 3 July 2017, as amended. The status may
  /// be acquired by different types of private entities and is not limited
  /// to companies.
  iTSocialEnterpriseCharity('https://schema.org/ITSocialEnterpriseCharity'),

  /// ITSocialPromotionCharity: Non-profit type referring to Italian social
  /// promotion associations (Ital. associazione di promozione sociale or
  /// APS), governed primarily by Articles 35 and following of Legislative
  /// Decree No. 117 of 3 July 2017, the Italian Third Sector Code, which
  /// superseded Law 383 of 2000.
  iTSocialPromotionCharity('https://schema.org/ITSocialPromotionCharity'),

  /// ITSportCompanyCharity: Non-profit type referring to Italian amateur
  /// sports clubs organized in corporate form (Ital. società sportiva
  /// dilettantistica or SSD), as distinct from amateur sports associations
  /// (Ital. associazione sportiva dilettantistica or ASD), governed
  /// primarily by Legislative Decree No. 36 of 28 February 2021, as
  /// amended, and registered in the national register of amateur sports
  /// activities established by Legislative Decree No. 39 of 28 February
  /// 2021. These entities are generally outside the Italian Third Sector
  /// unless also registered in the RUNTS.
  @Deprecated(
      'Use [ITAmateurSportsClubCharity]. See https://schema.org/ITSportCompanyCharity')
  iTSportCompanyCharity('https://schema.org/ITSportCompanyCharity'),

  /// ITVolunteerAssociationCharity: Non-profit type referring to Italian
  /// volunteer organizations (Ital. organizzazione di volontariato or
  /// ODV), governed primarily by Articles 32 and following of Legislative
  /// Decree No. 117 of 3 July 2017, the Italian Third Sector Code, which
  /// superseded Law 266 of 1991.
  iTVolunteerAssociationCharity(
      'https://schema.org/ITVolunteerAssociationCharity');

  /// Constructor for [SchemaITNonprofitType]
  const SchemaITNonprofitType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaITNonprofitType] to JSON-LD
  @override
  String toJsonLd() => value;
}
