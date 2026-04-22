// Copyright (c) Oddbit (https://oddbit.id)
//
// This source file is part of schema_org.
// Licensed under the Apache License, Version 2.0. See LICENSE and NOTICE.
//
// GENERATED CODE — DO NOT MODIFY BY HAND.
// Produced by the schema_parser tool in /parser.
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:schema_org/src/utils.dart';
import 'package:schema_org/schemas/product.dart';
import 'package:schema_org/schemas/quantitative_value.dart';
import 'package:schema_org/schemas/qualitative_value.dart';
import 'package:schema_org/schemas/drive_wheel_configuration_value.dart';
import 'package:schema_org/schemas/steering_position_value.dart';
import 'package:schema_org/schemas/engine_specification.dart';
import 'package:schema_org/schemas/car_usage_type.dart';

/// A vehicle is a device that is designed or used to transport people or
/// cargo over land, water, air, or through space.
/// See https://schema.org/Vehicle
class SchemaVehicle extends SchemaProduct {
  /// There are unfortunately no standard unit codes for seconds/0..100 km/h or
  /// seconds/0..60 mph. Simply use "SEC" for seconds and indicate the
  /// velocities in the [Schemaname] of the [SchemaQuantitativeValue], or use
  /// [SchemavalueReference] with a [SchemaQuantitativeValue] of 0..60 mph or
  /// 0..100 km/h to specify the reference speeds.
  SchemaQuantitativeValue? accelerationTime;

  /// Indicates the design and body style of the vehicle (e.g. station wagon,
  /// hatchback, etc.).
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic bodyType;

  /// //en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio
  /// communications to identify people, radio and TV stations, or vehicles.
  String? callSign;

  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? cargoVolume;

  /// The date of the first registration of the vehicle with the respective
  /// public authorities.
  String? dateVehicleFirstRegistered;

  /// The drive wheel configuration, i.e. which roadwheels will receive torque
  /// from the vehicle's engine via the drivetrain.
  ///
  /// Supported types: [SchemaDriveWheelConfigurationValue], [String]
  dynamic driveWheelConfiguration;

  /// The CO2 emissions in g/km. When used in combination with a
  /// QuantitativeValue, put "g/km" into the unitText property of that value,
  /// since there is no UN/CEFACT Common Code for "g/km".
  num? emissionsCO2;

  /// LTR for liters, GLL of US gallons, GLI for UK / imperial gallons, AMH for
  /// ampere-hours (for electrical vehicles).
  SchemaQuantitativeValue? fuelCapacity;

  /// Often, the absolute value is useful only when related to driving speed
  /// ("at 80 km/h") or usage pattern ("city traffic"). You can use
  /// [SchemavalueReference] to link the value for the fuel consumption to
  /// another value.
  SchemaQuantitativeValue? fuelConsumption;

  /// Often, the absolute value is useful only when related to driving speed
  /// ("at 80 km/h") or usage pattern ("city traffic"). You can use
  /// [SchemavalueReference] to link the value for the fuel economy to another
  /// value.
  SchemaQuantitativeValue? fuelEfficiency;

  /// The type of fuel suitable for the engine or engines of the vehicle. If
  /// the vehicle has only one engine, this property can be attached directly
  /// to the vehicle.
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic fuelType;

  /// A textual description of known damages, both repaired and unrepaired.
  String? knownVehicleDamages;

  /// Indicates that the vehicle meets the respective emission standard.
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic meetsEmissionStandard;

  /// KMT for kilometers, SMI for statute miles.
  SchemaQuantitativeValue? mileageFromOdometer;

  /// The release date of a vehicle model (often used to differentiate versions
  /// of the same make and model).
  String? modelDate;

  /// The number or type of airbags in the vehicle.
  ///
  /// Supported types: [String], [num]
  dynamic numberOfAirbags;

  /// C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfAxles;

  /// C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfDoors;

  /// C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfForwardGears;

  /// C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfPreviousOwners;

  /// Note that you can use [SchemaminValue] and [SchemamaxValue] to indicate
  /// ranges.
  SchemaQuantitativeValue? payload;

  /// C62 for persons.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic seatingCapacity;

  /// There are many different ways of measuring the speed range. You can link
  /// to information about how the given value has been determined using the
  /// [SchemavalueReference] property.
  SchemaQuantitativeValue? speed;

  /// The position of the steering wheel or similar device (mostly for cars).
  SchemaSteeringPositionValue? steeringPosition;

  /// Note that you can use [SchemaminValue] and [SchemamaxValue] to indicate
  /// ranges.
  SchemaQuantitativeValue? tongueWeight;

  /// Note that you can use [SchemaminValue] and [SchemamaxValue] to indicate
  /// ranges.
  SchemaQuantitativeValue? trailerWeight;

  /// A short text indicating the configuration of the vehicle, e.g. '5dr
  /// hatchback ST 2.5 MT 225 hp' or 'limited edition'.
  String? vehicleConfiguration;

  /// Information about the engine or engines of the vehicle.
  SchemaEngineSpecification? vehicleEngine;

  /// The Vehicle Identification Number (VIN) is a unique serial number used by
  /// the automotive industry to identify individual motor vehicles.
  String? vehicleIdentificationNumber;

  /// The color or color combination of the interior of the vehicle.
  String? vehicleInteriorColor;

  /// The type or material of the interior of the vehicle (e.g. synthetic
  /// fabric, leather, wood, etc.). While most interior types are characterized
  /// by the material used, an interior type can also be based on vehicle usage
  /// or target audience.
  String? vehicleInteriorType;

  /// The release date of a vehicle model (often used to differentiate versions
  /// of the same make and model).
  String? vehicleModelDate;

  /// C62 for persons.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic vehicleSeatingCapacity;

  /// Indicates whether the vehicle has been used for special purposes, like
  /// commercial rental, driving school, or as a taxi. The legislation in many
  /// countries requires this information to be revealed when offering a car
  /// for sale.
  ///
  /// Supported types: [SchemaCarUsageType], [String]
  dynamic vehicleSpecialUsage;

  /// The type of component used for transmitting the power from a rotating
  /// power source to the wheels or other relevant component(s) ("gearbox" for
  /// cars).
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic vehicleTransmission;

  /// Note that you can use [SchemaminValue] and [SchemamaxValue] to indicate
  /// ranges.
  SchemaQuantitativeValue? weightTotal;

  /// CMT for centimeters, MTR for meters, INH for inches, FOT for foot/feet.
  SchemaQuantitativeValue? wheelbase;

  /// Create a new instance of [SchemaVehicle]
  SchemaVehicle({
    super.additionalProperty,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.asin,
    super.audience,
    super.award,
    super.awards,
    super.brand,
    super.category,
    super.color,
    super.colorSwatch,
    super.countryOfAssembly,
    super.countryOfLastProcessing,
    super.countryOfOrigin,
    super.depth,
    super.description,
    super.disambiguatingDescription,
    super.displayLocation,
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
    super.logo,
    super.mainEntityOfPage,
    super.manufacturer,
    super.material,
    super.mobileUrl,
    super.model,
    super.mpn,
    super.name,
    super.negativeNotes,
    super.nsn,
    super.offers,
    super.owner,
    super.pattern,
    super.positiveNotes,
    super.potentialAction,
    super.productID,
    super.productionDate,
    super.purchaseDate,
    super.releaseDate,
    super.review,
    super.reviews,
    super.sameAs,
    super.size,
    super.sku,
    super.slogan,
    super.subjectOf,
    super.url,
    super.weight,
    super.width,
    this.accelerationTime,
    this.bodyType,
    this.callSign,
    this.cargoVolume,
    this.dateVehicleFirstRegistered,
    this.driveWheelConfiguration,
    this.emissionsCO2,
    this.fuelCapacity,
    this.fuelConsumption,
    this.fuelEfficiency,
    this.fuelType,
    this.knownVehicleDamages,
    this.meetsEmissionStandard,
    this.mileageFromOdometer,
    this.modelDate,
    this.numberOfAirbags,
    this.numberOfAxles,
    this.numberOfDoors,
    this.numberOfForwardGears,
    this.numberOfPreviousOwners,
    this.payload,
    this.seatingCapacity,
    this.speed,
    this.steeringPosition,
    this.tongueWeight,
    this.trailerWeight,
    this.vehicleConfiguration,
    this.vehicleEngine,
    this.vehicleIdentificationNumber,
    this.vehicleInteriorColor,
    this.vehicleInteriorType,
    this.vehicleModelDate,
    this.vehicleSeatingCapacity,
    this.vehicleSpecialUsage,
    this.vehicleTransmission,
    this.weightTotal,
    this.wheelbase,
  });

  /// Serialize [SchemaVehicle] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        ...super.toJsonLd(),
        '@type': 'Vehicle',
        'accelerationTime':
            convertToJsonLd(accelerationTime, [SchemaQuantitativeValue]),
        'bodyType': convertToJsonLd(bodyType, [SchemaQualitativeValue, String]),
        'callSign': convertToJsonLd(callSign, [String]),
        'cargoVolume': convertToJsonLd(cargoVolume, [SchemaQuantitativeValue]),
        'dateVehicleFirstRegistered':
            convertToJsonLd(dateVehicleFirstRegistered, [String]),
        'driveWheelConfiguration': convertToJsonLd(driveWheelConfiguration,
            [SchemaDriveWheelConfigurationValue, String]),
        'emissionsCO2': convertToJsonLd(emissionsCO2, [num]),
        'fuelCapacity':
            convertToJsonLd(fuelCapacity, [SchemaQuantitativeValue]),
        'fuelConsumption':
            convertToJsonLd(fuelConsumption, [SchemaQuantitativeValue]),
        'fuelEfficiency':
            convertToJsonLd(fuelEfficiency, [SchemaQuantitativeValue]),
        'fuelType': convertToJsonLd(fuelType, [SchemaQualitativeValue, String]),
        'knownVehicleDamages': convertToJsonLd(knownVehicleDamages, [String]),
        'meetsEmissionStandard': convertToJsonLd(
            meetsEmissionStandard, [SchemaQualitativeValue, String]),
        'mileageFromOdometer':
            convertToJsonLd(mileageFromOdometer, [SchemaQuantitativeValue]),
        'modelDate': convertToJsonLd(modelDate, [String]),
        'numberOfAirbags': convertToJsonLd(numberOfAirbags, [String, num]),
        'numberOfAxles':
            convertToJsonLd(numberOfAxles, [SchemaQuantitativeValue, num]),
        'numberOfDoors':
            convertToJsonLd(numberOfDoors, [SchemaQuantitativeValue, num]),
        'numberOfForwardGears': convertToJsonLd(
            numberOfForwardGears, [SchemaQuantitativeValue, num]),
        'numberOfPreviousOwners': convertToJsonLd(
            numberOfPreviousOwners, [SchemaQuantitativeValue, num]),
        'payload': convertToJsonLd(payload, [SchemaQuantitativeValue]),
        'seatingCapacity':
            convertToJsonLd(seatingCapacity, [SchemaQuantitativeValue, num]),
        'speed': convertToJsonLd(speed, [SchemaQuantitativeValue]),
        'steeringPosition':
            convertToJsonLd(steeringPosition, [SchemaSteeringPositionValue]),
        'tongueWeight':
            convertToJsonLd(tongueWeight, [SchemaQuantitativeValue]),
        'trailerWeight':
            convertToJsonLd(trailerWeight, [SchemaQuantitativeValue]),
        'vehicleConfiguration': convertToJsonLd(vehicleConfiguration, [String]),
        'vehicleEngine':
            convertToJsonLd(vehicleEngine, [SchemaEngineSpecification]),
        'vehicleIdentificationNumber':
            convertToJsonLd(vehicleIdentificationNumber, [String]),
        'vehicleInteriorColor': convertToJsonLd(vehicleInteriorColor, [String]),
        'vehicleInteriorType': convertToJsonLd(vehicleInteriorType, [String]),
        'vehicleModelDate': convertToJsonLd(vehicleModelDate, [String]),
        'vehicleSeatingCapacity': convertToJsonLd(
            vehicleSeatingCapacity, [SchemaQuantitativeValue, num]),
        'vehicleSpecialUsage':
            convertToJsonLd(vehicleSpecialUsage, [SchemaCarUsageType, String]),
        'vehicleTransmission': convertToJsonLd(
            vehicleTransmission, [SchemaQualitativeValue, String]),
        'weightTotal': convertToJsonLd(weightTotal, [SchemaQuantitativeValue]),
        'wheelbase': convertToJsonLd(wheelbase, [SchemaQuantitativeValue]),
      });
}
