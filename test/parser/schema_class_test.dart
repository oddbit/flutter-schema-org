import 'package:flutter_test/flutter_test.dart';

import '../../parser/schema_class.dart';

void main() {
  group('Schema Parser CLI', () {
    group('Schema Class', () {
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
    });
  });
}
