// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/schemas/nonprofit_type.dart';

/// USNonprofitType: Non-profit organization type originating from the United
/// States.
/// See https://schema.org/USNonprofitType
enum SchemaUSNonprofitType implements SchemaNonprofitType {
  /// Nonprofit501a: Non-profit type referring to Farmers’ Cooperative
  /// Associations.
  nonprofit501a('https://schema.org/Nonprofit501a'),

  /// Nonprofit501c1: Non-profit type referring to Corporations Organized
  /// Under Act of Congress, including Federal Credit Unions and National
  /// Farm Loan Associations.
  nonprofit501c1('https://schema.org/Nonprofit501c1'),

  /// Nonprofit501c10: Non-profit type referring to Domestic Fraternal
  /// Societies and Associations.
  nonprofit501c10('https://schema.org/Nonprofit501c10'),

  /// Nonprofit501c11: Non-profit type referring to Teachers' Retirement
  /// Fund Associations.
  nonprofit501c11('https://schema.org/Nonprofit501c11'),

  /// Nonprofit501c12: Non-profit type referring to Benevolent Life
  /// Insurance Associations, Mutual Ditch or Irrigation Companies, Mutual
  /// or Cooperative Telephone Companies.
  nonprofit501c12('https://schema.org/Nonprofit501c12'),

  /// Nonprofit501c13: Non-profit type referring to Cemetery Companies.
  nonprofit501c13('https://schema.org/Nonprofit501c13'),

  /// Nonprofit501c14: Non-profit type referring to State-Chartered Credit
  /// Unions, Mutual Reserve Funds.
  nonprofit501c14('https://schema.org/Nonprofit501c14'),

  /// Nonprofit501c15: Non-profit type referring to Mutual Insurance
  /// Companies or Associations.
  nonprofit501c15('https://schema.org/Nonprofit501c15'),

  /// Nonprofit501c16: Non-profit type referring to Cooperative
  /// Organizations to Finance Crop Operations.
  nonprofit501c16('https://schema.org/Nonprofit501c16'),

  /// Nonprofit501c17: Non-profit type referring to Supplemental
  /// Unemployment Benefit Trusts.
  nonprofit501c17('https://schema.org/Nonprofit501c17'),

  /// Nonprofit501c18: Non-profit type referring to Employee Funded Pension
  /// Trust (created before 25 June 1959).
  nonprofit501c18('https://schema.org/Nonprofit501c18'),

  /// Nonprofit501c19: Non-profit type referring to Post or Organization of
  /// Past or Present Members of the Armed Forces.
  nonprofit501c19('https://schema.org/Nonprofit501c19'),

  /// Nonprofit501c2: Non-profit type referring to Title-holding
  /// Corporations for Exempt Organizations.
  nonprofit501c2('https://schema.org/Nonprofit501c2'),

  /// Nonprofit501c20: Non-profit type referring to Group Legal Services
  /// Plan Organizations.
  nonprofit501c20('https://schema.org/Nonprofit501c20'),

  /// Nonprofit501c21: Non-profit type referring to Black Lung Benefit
  /// Trusts.
  nonprofit501c21('https://schema.org/Nonprofit501c21'),

  /// Nonprofit501c22: Non-profit type referring to Withdrawal Liability
  /// Payment Funds.
  nonprofit501c22('https://schema.org/Nonprofit501c22'),

  /// Nonprofit501c23: Non-profit type referring to Veterans Organizations.
  nonprofit501c23('https://schema.org/Nonprofit501c23'),

  /// Nonprofit501c24: Non-profit type referring to Section 4049 ERISA
  /// Trusts.
  nonprofit501c24('https://schema.org/Nonprofit501c24'),

  /// Nonprofit501c25: Non-profit type referring to Real Property
  /// Title-Holding Corporations or Trusts with Multiple Parents.
  nonprofit501c25('https://schema.org/Nonprofit501c25'),

  /// Nonprofit501c26: Non-profit type referring to State-Sponsored
  /// Organizations Providing Health Coverage for High-Risk Individuals.
  nonprofit501c26('https://schema.org/Nonprofit501c26'),

  /// Nonprofit501c27: Non-profit type referring to State-Sponsored
  /// Workers' Compensation Reinsurance Organizations.
  nonprofit501c27('https://schema.org/Nonprofit501c27'),

  /// Nonprofit501c28: Non-profit type referring to National Railroad
  /// Retirement Investment Trusts.
  nonprofit501c28('https://schema.org/Nonprofit501c28'),

  /// Nonprofit501c3: Non-profit type referring to Religious, Educational,
  /// Charitable, Scientific, Literary, Testing for Public Safety,
  /// Fostering National or International Amateur Sports Competition, or
  /// Prevention of Cruelty to Children or Animals Organizations.
  nonprofit501c3('https://schema.org/Nonprofit501c3'),

  /// Nonprofit501c4: Non-profit type referring to Civic Leagues, Social
  /// Welfare Organizations, and Local Associations of Employees.
  nonprofit501c4('https://schema.org/Nonprofit501c4'),

  /// Nonprofit501c5: Non-profit type referring to Labor, Agricultural and
  /// Horticultural Organizations.
  nonprofit501c5('https://schema.org/Nonprofit501c5'),

  /// Nonprofit501c6: Non-profit type referring to Business Leagues,
  /// Chambers of Commerce, Real Estate Boards.
  nonprofit501c6('https://schema.org/Nonprofit501c6'),

  /// Nonprofit501c7: Non-profit type referring to Social and Recreational
  /// Clubs.
  nonprofit501c7('https://schema.org/Nonprofit501c7'),

  /// Nonprofit501c8: Non-profit type referring to Fraternal Beneficiary
  /// Societies and Associations.
  nonprofit501c8('https://schema.org/Nonprofit501c8'),

  /// Nonprofit501c9: Non-profit type referring to Voluntary Employee
  /// Beneficiary Associations.
  nonprofit501c9('https://schema.org/Nonprofit501c9'),

  /// Nonprofit501d: Non-profit type referring to Religious and Apostolic
  /// Associations.
  nonprofit501d('https://schema.org/Nonprofit501d'),

  /// Nonprofit501e: Non-profit type referring to Cooperative Hospital
  /// Service Organizations.
  nonprofit501e('https://schema.org/Nonprofit501e'),

  /// Nonprofit501f: Non-profit type referring to Cooperative Service
  /// Organizations.
  nonprofit501f('https://schema.org/Nonprofit501f'),

  /// Nonprofit501k: Non-profit type referring to Child Care Organizations.
  nonprofit501k('https://schema.org/Nonprofit501k'),

  /// Nonprofit501n: Non-profit type referring to Charitable Risk Pools.
  nonprofit501n('https://schema.org/Nonprofit501n'),

  /// Nonprofit501q: Non-profit type referring to Credit Counseling
  /// Organizations.
  nonprofit501q('https://schema.org/Nonprofit501q'),

  /// Nonprofit527: Non-profit type referring to political organizations.
  nonprofit527('https://schema.org/Nonprofit527');

  /// Constructor for [SchemaUSNonprofitType]
  const SchemaUSNonprofitType(this.value);

  /// Canonical Schema.org URL of this member
  final String value;

  /// Serialize [SchemaUSNonprofitType] to JSON-LD
  @override
  String toJsonLd() => value;
}
