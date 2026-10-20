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
  /// The time needed to accelerate the vehicle from a given start velocity to
  /// a given target velocity.\n\nTypical unit code(s): SEC for seconds\n\n*
  /// Note: There are unfortunately no standard unit codes for seconds/0..100
  /// km/h or seconds/0..60 mph. Simply use "SEC" for seconds and indicate the
  /// velocities in the [Schemaname] of the [SchemaQuantitativeValue], or use
  /// [SchemavalueReference] with a [SchemaQuantitativeValue] of 0..60 mph or
  /// 0..100 km/h to specify the reference speeds.
  SchemaQuantitativeValue? accelerationTime;

  /// Indicates the design and body style of the vehicle (e.g. station wagon,
  /// hatchback, etc.).
  ///
  /// Supported types: [SchemaQualitativeValue], [String]
  dynamic bodyType;

  /// A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in
  /// broadcasting and radio communications to identify people, radio and TV
  /// stations, or vehicles.
  String? callSign;

  /// The available volume for cargo or luggage. For automobiles, this is
  /// usually the trunk volume.\n\nTypical unit code(s): LTR for liters, FTQ
  /// for cubic foot/feet\n\nNote: You can use [SchemaminValue] and
  /// [SchemamaxValue] to indicate ranges.
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

  /// The capacity of the fuel tank or in the case of electric cars, the
  /// battery. If there are multiple components for storage, this should
  /// indicate the total of all storage of the same type.\n\nTypical unit
  /// code(s): LTR for liters, GLL of US gallons, GLI for UK / imperial
  /// gallons, AMH for ampere-hours (for electrical vehicles).
  SchemaQuantitativeValue? fuelCapacity;

  /// The amount of fuel consumed for traveling a particular distance or
  /// temporal duration with the given vehicle (e.g. liters per 100 km).\n\n*
  /// Note 1: There are unfortunately no standard unit codes for liters per 100
  /// km. Use [SchemaunitText] to indicate the unit of measurement, e.g. L/100
  /// km.\n* Note 2: There are two ways of indicating the fuel consumption,
  /// [SchemafuelConsumption] (e.g. 8 liters per 100 km) and
  /// [SchemafuelEfficiency] (e.g. 30 miles per gallon). They are
  /// reciprocal.\n* Note 3: Often, the absolute value is useful only when
  /// related to driving speed ("at 80 km/h") or usage pattern ("city
  /// traffic"). You can use [SchemavalueReference] to link the value for the
  /// fuel consumption to another value.
  SchemaQuantitativeValue? fuelConsumption;

  /// The distance traveled per unit of fuel used; most commonly miles per
  /// gallon (mpg) or kilometers per liter (km/L).\n\n* Note 1: There are
  /// unfortunately no standard unit codes for miles per gallon or kilometers
  /// per liter. Use [SchemaunitText] to indicate the unit of measurement, e.g.
  /// mpg or km/L.\n* Note 2: There are two ways of indicating the fuel
  /// consumption, [SchemafuelConsumption] (e.g. 8 liters per 100 km) and
  /// [SchemafuelEfficiency] (e.g. 30 miles per gallon). They are
  /// reciprocal.\n* Note 3: Often, the absolute value is useful only when
  /// related to driving speed ("at 80 km/h") or usage pattern ("city
  /// traffic"). You can use [SchemavalueReference] to link the value for the
  /// fuel economy to another value.
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

  /// The total distance travelled by the particular vehicle since its initial
  /// production, as read from its odometer.\n\nTypical unit code(s): KMT for
  /// kilometers, SMI for statute miles.
  SchemaQuantitativeValue? mileageFromOdometer;

  /// The release date of a vehicle model (often used to differentiate versions
  /// of the same make and model).
  String? modelDate;

  /// The number or type of airbags in the vehicle.
  ///
  /// Supported types: [String], [num]
  dynamic numberOfAirbags;

  /// The number of axles.\n\nTypical unit code(s): C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfAxles;

  /// The number of doors.\n\nTypical unit code(s): C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfDoors;

  /// The total number of forward gears available for the transmission system
  /// of the vehicle.\n\nTypical unit code(s): C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfForwardGears;

  /// The number of owners of the vehicle, including the current
  /// one.\n\nTypical unit code(s): C62.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic numberOfPreviousOwners;

  /// The permitted weight of passengers and cargo, EXCLUDING the weight of the
  /// empty vehicle.\n\nTypical unit code(s): KGM for kilogram, LBR for
  /// pound\n\n* Note 1: Many databases specify the permitted TOTAL weight
  /// instead, which is the sum of [Schemaweight] and [Schemapayload]\n* Note
  /// 2: You can indicate additional information in the [Schemaname] of the
  /// [SchemaQuantitativeValue] node.\n* Note 3: You may also link to a
  /// [SchemaQualitativeValue] node that provides additional information using
  /// [SchemavalueReference].\n* Note 4: Note that you can use [SchemaminValue]
  /// and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? payload;

  /// The number of persons that can be seated (e.g. in a vehicle), both in
  /// terms of the physical space available, and in terms of limitations set by
  /// law.\n\nTypical unit code(s): C62 for persons.
  ///
  /// Supported types: [SchemaQuantitativeValue], [num]
  dynamic seatingCapacity;

  /// The speed range of the vehicle. If the vehicle is powered by an engine,
  /// the upper limit of the speed range (indicated by [SchemamaxValue]) should
  /// be the maximum speed achievable under regular conditions.\n\nTypical unit
  /// code(s): KMH for km/h, HM for mile per hour (0.447 04 m/s), KNT for
  /// knot\n\n*Note 1: Use [SchemaminValue] and [SchemamaxValue] to indicate
  /// the range. Typically, the minimal value is zero.\n* Note 2: There are
  /// many different ways of measuring the speed range. You can link to
  /// information about how the given value has been determined using the
  /// [SchemavalueReference] property.
  SchemaQuantitativeValue? speed;

  /// The position of the steering wheel or similar device (mostly for cars).
  SchemaSteeringPositionValue? steeringPosition;

  /// The permitted vertical load (TWR) of a trailer attached to the vehicle.
  /// Also referred to as Tongue Load Rating (TLR) or Vertical Load Rating
  /// (VLR).\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n\n* Note
  /// 1: You can indicate additional information in the [Schemaname] of the
  /// [SchemaQuantitativeValue] node.\n* Note 2: You may also link to a
  /// [SchemaQualitativeValue] node that provides additional information using
  /// [SchemavalueReference].\n* Note 3: Note that you can use [SchemaminValue]
  /// and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? tongueWeight;

  /// The permitted weight of a trailer attached to the vehicle.\n\nTypical
  /// unit code(s): KGM for kilogram, LBR for pound\n* Note 1: You can indicate
  /// additional information in the [Schemaname] of the
  /// [SchemaQuantitativeValue] node.\n* Note 2: You may also link to a
  /// [SchemaQualitativeValue] node that provides additional information using
  /// [SchemavalueReference].\n* Note 3: Note that you can use [SchemaminValue]
  /// and [SchemamaxValue] to indicate ranges.
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

  /// The number of passengers that can be seated in the vehicle, both in terms
  /// of the physical space available, and in terms of limitations set by
  /// law.\n\nTypical unit code(s): C62 for persons.
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

  /// The permitted total weight of the loaded vehicle, including passengers
  /// and cargo and the weight of the empty vehicle.\n\nTypical unit code(s):
  /// KGM for kilogram, LBR for pound\n\n* Note 1: You can indicate additional
  /// information in the [Schemaname] of the [SchemaQuantitativeValue] node.\n*
  /// Note 2: You may also link to a [SchemaQualitativeValue] node that
  /// provides additional information using [SchemavalueReference].\n* Note 3:
  /// Note that you can use [SchemaminValue] and [SchemamaxValue] to indicate
  /// ranges.
  SchemaQuantitativeValue? weightTotal;

  /// The distance between the centers of the front and rear wheels.\n\nTypical
  /// unit code(s): CMT for centimeters, MTR for meters, INH for inches, FOT
  /// for foot/feet.
  SchemaQuantitativeValue? wheelbase;

  /// Create a new instance of [SchemaVehicle]
  SchemaVehicle({
    super.additionalProperty,
    super.additionalType,
    super.aggregateRating,
    super.alternateName,
    super.asin,
    super.audience,
    super.authorizedRepresentative,
    super.award,
    super.awards,
    super.brand,
    super.category,
    super.color,
    super.colorSwatch,
    super.consumerNotice,
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
    super.hasDigitalProductPassport,
    super.hasEnergyConsumptionDetails,
    super.hasGS1DigitalLink,
    super.hasMeasurement,
    super.hasMerchantReturnPolicy,
    super.hasProductReturnPolicy,
    super.height,
    super.identifier,
    super.image,
    super.importer,
    super.inProductGroupWithID,
    super.isAccessoryOrSparePartFor,
    super.isConsumableFor,
    super.isFamilyFriendly,
    super.isOftenBoughtWith,
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
    super.recycledContentPercentage,
    super.releaseDate,
    super.review,
    super.reviews,
    super.sameAs,
    super.size,
    super.sku,
    super.slogan,
    super.specification,
    super.subjectOf,
    super.substanceOfConcern,
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
        'accelerationTime': convertToJsonLd(accelerationTime),
        'bodyType': convertToJsonLd(
            bodyType, (v) => v is SchemaQualitativeValue || v is String),
        'callSign': convertToJsonLd(callSign),
        'cargoVolume': convertToJsonLd(cargoVolume),
        'dateVehicleFirstRegistered':
            convertToJsonLd(dateVehicleFirstRegistered),
        'driveWheelConfiguration': convertToJsonLd(driveWheelConfiguration,
            (v) => v is SchemaDriveWheelConfigurationValue || v is String),
        'emissionsCO2': convertToJsonLd(emissionsCO2),
        'fuelCapacity': convertToJsonLd(fuelCapacity),
        'fuelConsumption': convertToJsonLd(fuelConsumption),
        'fuelEfficiency': convertToJsonLd(fuelEfficiency),
        'fuelType': convertToJsonLd(
            fuelType, (v) => v is SchemaQualitativeValue || v is String),
        'knownVehicleDamages': convertToJsonLd(knownVehicleDamages),
        'meetsEmissionStandard': convertToJsonLd(meetsEmissionStandard,
            (v) => v is SchemaQualitativeValue || v is String),
        'mileageFromOdometer': convertToJsonLd(mileageFromOdometer),
        'modelDate': convertToJsonLd(modelDate),
        'numberOfAirbags':
            convertToJsonLd(numberOfAirbags, (v) => v is String || v is num),
        'numberOfAxles': convertToJsonLd(
            numberOfAxles, (v) => v is SchemaQuantitativeValue || v is num),
        'numberOfDoors': convertToJsonLd(
            numberOfDoors, (v) => v is SchemaQuantitativeValue || v is num),
        'numberOfForwardGears': convertToJsonLd(numberOfForwardGears,
            (v) => v is SchemaQuantitativeValue || v is num),
        'numberOfPreviousOwners': convertToJsonLd(numberOfPreviousOwners,
            (v) => v is SchemaQuantitativeValue || v is num),
        'payload': convertToJsonLd(payload),
        'seatingCapacity': convertToJsonLd(
            seatingCapacity, (v) => v is SchemaQuantitativeValue || v is num),
        'speed': convertToJsonLd(speed),
        'steeringPosition': convertToJsonLd(steeringPosition),
        'tongueWeight': convertToJsonLd(tongueWeight),
        'trailerWeight': convertToJsonLd(trailerWeight),
        'vehicleConfiguration': convertToJsonLd(vehicleConfiguration),
        'vehicleEngine': convertToJsonLd(vehicleEngine),
        'vehicleIdentificationNumber':
            convertToJsonLd(vehicleIdentificationNumber),
        'vehicleInteriorColor': convertToJsonLd(vehicleInteriorColor),
        'vehicleInteriorType': convertToJsonLd(vehicleInteriorType),
        'vehicleModelDate': convertToJsonLd(vehicleModelDate),
        'vehicleSeatingCapacity': convertToJsonLd(vehicleSeatingCapacity,
            (v) => v is SchemaQuantitativeValue || v is num),
        'vehicleSpecialUsage': convertToJsonLd(
            vehicleSpecialUsage, (v) => v is SchemaCarUsageType || v is String),
        'vehicleTransmission': convertToJsonLd(vehicleTransmission,
            (v) => v is SchemaQualitativeValue || v is String),
        'weightTotal': convertToJsonLd(weightTotal),
        'wheelbase': convertToJsonLd(wheelbase),
      });
}
