// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/vehicle.dart';
import 'package:schema_org/schemas/quantitative_value.dart';

/// A car is a wheeled, self-powered motor vehicle used for transportation.
/// See https://schema.org/Car
class SchemaCar extends SchemaVehicle {
  /// The ACRISS Car Classification Code is a code used by many car rental
  /// companies, for classifying vehicles. ACRISS stands for Association of Car
  /// Rental Industry Systems and Standards.
  String? acrissCode;

  /// Note that you can use [SchemaminValue] and [SchemamaxValue] to indicate
  /// ranges.
  SchemaQuantitativeValue? roofLoad;

  /// Create a new instance of [SchemaCar]
  SchemaCar({
    super.accelerationTime,
    super.additionalProperty,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.asin,
    super.audience,
    super.award,
    super.awards,
    super.bodyType,
    super.brand,
    super.callSign,
    super.cargoVolume,
    super.category,
    super.color,
    super.colorSwatch,
    super.countryOfAssembly,
    super.countryOfLastProcessing,
    super.countryOfOrigin,
    super.dateVehicleFirstRegistered,
    super.depth,
    super.description,
    super.disambiguatingDescription,
    super.displayLocation,
    super.driveWheelConfiguration,
    super.emissionsCO2,
    super.fuelCapacity,
    super.fuelConsumption,
    super.fuelEfficiency,
    super.fuelType,
    super.funding,
    super.gtin,
    super.gtin12,
    super.gtin13,
    super.gtin14,
    super.gtin8,
    super.hasAdultConsideration,
    super.hasCertification,
    super.hasEnergyConsumptionDetails,
    super.hasGS1DigitalLink,
    super.hasMeasurement,
    super.hasMerchantReturnPolicy,
    super.height,
    super.identifier,
    super.image,
    super.inProductGroupWithID,
    super.isAccessoryOrSparePartFor,
    super.isConsumableFor,
    super.isFamilyFriendly,
    super.isRelatedTo,
    super.isSimilarTo,
    super.isVariantOf,
    super.itemCondition,
    super.keywords,
    super.knownVehicleDamages,
    super.logo,
    super.mainEntityOfPage,
    super.manufacturer,
    super.material,
    super.meetsEmissionStandard,
    super.mileageFromOdometer,
    super.mobileUrl,
    super.model,
    super.modelDate,
    super.mpn,
    super.name,
    super.negativeNotes,
    super.nsn,
    super.numberOfAirbags,
    super.numberOfAxles,
    super.numberOfDoors,
    super.numberOfForwardGears,
    super.numberOfPreviousOwners,
    super.offers,
    super.owner,
    super.pattern,
    super.payload,
    super.positiveNotes,
    super.potentialAction,
    super.productID,
    super.productionDate,
    super.purchaseDate,
    super.releaseDate,
    super.review,
    super.reviews,
    super.sameAs,
    super.seatingCapacity,
    super.size,
    super.sku,
    super.slogan,
    super.speed,
    super.steeringPosition,
    super.subjectOf,
    super.tongueWeight,
    super.trailerWeight,
    super.url,
    super.vehicleConfiguration,
    super.vehicleEngine,
    super.vehicleIdentificationNumber,
    super.vehicleInteriorColor,
    super.vehicleInteriorType,
    super.vehicleModelDate,
    super.vehicleSeatingCapacity,
    super.vehicleSpecialUsage,
    super.vehicleTransmission,
    super.weight,
    super.weightTotal,
    super.wheelbase,
    super.width,
    this.acrissCode,
    this.roofLoad,
  });

  /// Serialize [SchemaCar] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Car',
        'acrissCode': convertToJsonLd(acrissCode, [String]),
        'roofLoad': convertToJsonLd(roofLoad, [SchemaQuantitativeValue]),
      });
}
