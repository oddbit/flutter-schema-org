import 'package:test/test.dart';

import '../../bin/schema_parser.dart';

void main() {
  group('Schema Parser CLI', () {
    test('should be able to get schema types from JSON', () {
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
      expect(testEnumA.values.length, 2);
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

    test('should be able to make enums with inheritance structure', () {
      final json = [
        {
          '@id': 'schema:AbstractEnum',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'AbstractEnum comment',
          'rdfs:label': 'AbstractEnum',
          'rdfs:subClassOf': {'@id': 'schema:Enumeration'}
        },
        {
          '@id': 'schema:ChildEnum',
          '@type': 'rdfs:Class',
          'rdfs:comment': 'ChildEnum comment',
          'rdfs:label': 'ChildEnum',
          'rdfs:subClassOf': {'@id': 'schema:AbstractEnum'}
        },
        {
          '@id': 'schema:ChildEnumValue1',
          '@type': 'schema:ChildEnum',
          'rdfs:comment': 'ChildEnumValue1 comment',
          'rdfs:label': 'ChildEnumValue1'
        },
        {
          '@id': 'schema:ChildEnumValue2',
          '@type': 'schema:ChildEnum',
          'rdfs:comment': 'ChildEnumValue2 value comment',
          'rdfs:label': 'ChildEnumValue2'
        },
      ];

      final enums = getEnums(json);

      final abstractEnum = enums.firstWhere((e) => e.name == 'AbstractEnum');
      final childEnum = enums.firstWhere((e) => e.name == 'ChildEnum');
      expect(enums.length, 2, reason: 'Should have 2 enums');
      expect(abstractEnum.name, 'AbstractEnum');
      expect(abstractEnum.implementsParent, false);
      expect(abstractEnum.implementsValues, false);
      expect(abstractEnum.isAbstract, true);

      expect(childEnum.name, 'ChildEnum');
      expect(childEnum.implementsParent, true);
      expect(childEnum.implementsValues, true);
      expect(childEnum.isAbstract, false);
      expect(childEnum.values.length, 2);
    });
  });
}
