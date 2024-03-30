import 'package:flutter_test/flutter_test.dart';

import '../schema_parser.dart';

void main() {
  group('Schema Parser CLI', () {
    test('should be able to get schema classes from JSON', () {
      final json = [
        {
          '@id': 'schema:TestEnumA',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'This enum should be ignored',
          'rdfs:label': 'TestEnumA',
          'rdfs:subClassOf': {'@id': 'schema:Enumeration'}
        },
        {
          '@id': 'schema:ClassA',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'ClassA comment',
          'rdfs:label': 'ClassA'
        },
        {
          '@id': 'schema:ClassB',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'ClassB comment',
          'rdfs:label': 'ClassB'
        },
        {
          '@id': 'schema:ClassC',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'ClassC comment',
          'rdfs:label': 'ClassC',
          'rdfs:subClassOf': [
            {
              '@id': 'schema:ClassA',
            },
            {
              '@id': 'schema:ClassB',
            }
          ]
        },
        {
          '@id': 'schema:ClassD',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'ClassD comment',
          'rdfs:label': 'ClassD',
          'rdfs:subClassOf': {'@id': 'schema:ClassC'}
        },
        {
          '@id': 'schema:propertyX',
          '@type': 'rdf:Property',
          'rdfs:comment': 'propertyX comment',
          'rdfs:label': 'propertyX',
          'schema:domainIncludes': [
            {'@id': 'schema:ClassA'}
          ],
          'schema:rangeIncludes': [
            {'@id': 'schema:Text'}
          ]
        },
        {
          '@id': 'schema:propertyY',
          '@type': 'rdf:Property',
          'rdfs:comment': 'propertyY comment',
          'rdfs:label': 'propertyY',
          'schema:domainIncludes': [
            {'@id': 'schema:ClassA'},
            {'@id': 'schema:ClassB'}
          ],
          'schema:rangeIncludes': [
            {'@id': 'schema:ClassD'}
          ]
        },
      ];

      final classes = getClasses(json);

      final classA = classes.firstWhere((c) => c.name == 'ClassA');
      final classB = classes.firstWhere((c) => c.name == 'ClassB');
      final classC = classes.firstWhere((c) => c.name == 'ClassC');
      final classD = classes.firstWhere((c) => c.name == 'ClassD');
      expect(classes.length, 4);
      expect(classD.grandParents, ['ClassA', 'ClassB']);
      expect(classD.parents, ['ClassC']);
      expect(classC.parents, ['ClassA', 'ClassB']);

      expect(classA.properties.length, 2);
      expect(classB.properties.length, 1);
      expect(classC.properties.length, 0);
      expect(classD.properties.length, 0);

      final propertyAX =
          classA.properties.firstWhere((c) => c.name == 'propertyX');
      final propertyAY =
          classA.properties.firstWhere((c) => c.name == 'propertyY');
      expect(propertyAX.declaredType, 'String');
      expect(propertyAY.declaredType, 'ClassD');
    });

    test('should be able to make enums from JSON', () {
      final json = [
        {
          '@id': 'schema:TestEnumA',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'TestEnumA comment',
          'rdfs:label': 'TestEnumA',
          'rdfs:subClassOf': {'@id': 'schema:Enumeration'}
        },
        {
          '@id': 'schema:ClassA',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'ClassA should be ignored',
          'rdfs:label': 'ClassA'
        },
        {
          '@id': 'schema:TestEnumB',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'TestEnumB comment',
          'rdfs:label': 'TestEnumB',
          'rdfs:subClassOf': {'@id': 'schema:Enumeration'}
        },
        {
          '@id': 'schema:TestEnumAValue1',
          '@type': 'schema:TestEnumA',
          'rdfs:comment': 'TestEnumAValue1 comment',
          'rdfs:label': 'TestEnumAValue1'
        },
        {
          '@id': 'schema:TestEnumBValue1',
          '@type': 'schema:TestEnumB',
          'rdfs:comment': 'TestEnumBValue1 value comment',
          'rdfs:label': 'TestEnumBValue1'
        },
        {
          '@id': 'schema:propertyX',
          '@type': 'rdf:Property',
          'rdfs:comment': 'propertyX should be ignored',
          'rdfs:label': 'propertyX',
          'schema:domainIncludes': [
            {'@id': 'schema:ClassA'}
          ],
          'schema:rangeIncludes': [
            {'@id': 'schema:Text'}
          ]
        },
        {
          '@id': 'schema:TestEnumBValue3',
          '@type': 'schema:TestEnumB',
          'rdfs:comment': 'TestEnumBValue3 value comment',
          'rdfs:label': 'TestEnumBValue3'
        },
        {
          '@id': 'schema:TestEnumBValue2',
          '@type': 'schema:TestEnumB',
          'rdfs:comment': 'TestEnumBValue2 value comment',
          'rdfs:label': 'TestEnumBValue2'
        },
        {
          '@id': 'schema:TestEnumAValue2',
          '@type': 'schema:TestEnumA',
          'rdfs:comment': 'TestEnumAValue2 comment',
          'rdfs:label': 'TestEnumAValue2'
        }
      ];

      final enums = getEnums(json);

      final testEnumA = enums.firstWhere((e) => e.name == 'TestEnumA');
      final testEnumB = enums.firstWhere((e) => e.name == 'TestEnumB');
      expect(enums.length, 2, reason: 'Should have 2 enums');
      expect(testEnumA.name, 'TestEnumA');
      expect(enums[0].values.length, 2);
      expect(
        testEnumA.values.indexWhere((e) => e.name == 'TestEnumAValue1'),
        greaterThan(-1),
        reason: 'Should have TestEnumAValue1',
      );
      expect(testEnumB.name, 'TestEnumB');
      expect(testEnumB.values.length, 3);
      expect(
        testEnumB.values.indexWhere((e) => e.name == 'TestEnumBValue1'),
        greaterThan(-1),
        reason: 'Should have TestEnumBValue1',
      );
    });

    test('should be able to make schema class from JSON', () {
      final schemaClass = SchemaClass.fromJson(
        {
          '@id': 'schema:Event',
          '@type': 'rdfs:Class',
          'owl:equivalentClass': {
            '@id': 'dcmitype:Event',
          },
          'rdfs:comment':
              'An event happening at a certain time and location, such as a concert, lecture, or festival. Ticketing information may be added via the [[offers]] property. Repeated events may be structured as separate Event objects.',
          'rdfs:label': 'Event',
          'rdfs:subClassOf': {
            '@id': 'schema:Thing',
          }
        },
      );

      expect(schemaClass.name, 'Event');
      expect(schemaClass.description,
          'An event happening at a certain time and location, such as a concert, lecture, or festival. Ticketing information may be added via the [[offers]] property. Repeated events may be structured as separate Event objects.');
      expect(schemaClass.parents.length, 1);
      expect(schemaClass.parents, ['Thing']);
    });

    test('should be able to make schema property from JSON', () {
      final schemaProperty = SchemaProperty.fromJson(
        {
          '@id': 'schema:author',
          '@type': 'rdf:Property',
          'rdfs:comment':
              'The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.',
          'rdfs:label': 'author',
          'schema:domainIncludes': [
            {'@id': 'schema:Rating'},
            {'@id': 'schema:CreativeWork'}
          ],
          'schema:rangeIncludes': [
            {'@id': 'schema:Person'},
            {'@id': 'schema:Organization'}
          ]
        },
      );

      expect(schemaProperty.name, 'author');
      expect(schemaProperty.description,
          'The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.');
      expect(schemaProperty.declaredType, 'dynamic');
      expect(
        schemaProperty.types,
        List<String>.from(['Person', 'Organization']..sort()),
        reason: 'Should have a sorted array of these items',
      );
      expect(
        schemaProperty.inClasses,
        List<String>.from(['Rating', 'CreativeWork']..sort()),
        reason: 'Should have a sorted array of these items',
      );
    });

    test('should use type String for Text', () {
      final schemaProperty = SchemaProperty.fromJson(
        {
          '@id': 'schema:foo',
          '@type': 'rdf:Property',
          'rdfs:comment': 'baz',
          'rdfs:label': 'foo',
          'schema:domainIncludes': [],
          'schema:rangeIncludes': [
            {'@id': 'schema:Text'},
          ]
        },
      );

      expect(schemaProperty.declaredType, 'String');
    });

    test('should use type int for Integer', () {
      final schemaProperty = SchemaProperty.fromJson(
        {
          '@id': 'schema:foo',
          '@type': 'rdf:Property',
          'rdfs:comment': 'baz',
          'rdfs:label': 'foo',
          'schema:domainIncludes': [],
          'schema:rangeIncludes': [
            {'@id': 'schema:Integer'},
          ]
        },
      );

      expect(schemaProperty.declaredType, 'int');
    });

    test('should use type int for Number', () {
      final schemaProperty = SchemaProperty.fromJson(
        {
          '@id': 'schema:foo',
          '@type': 'rdf:Property',
          'rdfs:comment': 'baz',
          'rdfs:label': 'foo',
          'schema:domainIncludes': [],
          'schema:rangeIncludes': [
            {'@id': 'schema:Number'},
          ]
        },
      );

      expect(schemaProperty.declaredType, 'int');
    });

    test('should use type bool for Boolean', () {
      final schemaProperty = SchemaProperty.fromJson(
        {
          '@id': 'schema:foo',
          '@type': 'rdf:Property',
          'rdfs:comment': 'baz',
          'rdfs:label': 'foo',
          'schema:domainIncludes': [],
          'schema:rangeIncludes': [
            {'@id': 'schema:Boolean'},
          ]
        },
      );

      expect(schemaProperty.declaredType, 'bool');
    });

    test('should use type original schema name for other types', () {
      final schemaProperty = SchemaProperty.fromJson(
        {
          '@id': 'schema:foo',
          '@type': 'rdf:Property',
          'rdfs:comment': 'baz',
          'rdfs:label': 'foo',
          'schema:domainIncludes': [],
          'schema:rangeIncludes': [
            {'@id': 'schema:OtherType'},
          ]
        },
      );

      expect(schemaProperty.declaredType, 'OtherType');
    });
  });
}
