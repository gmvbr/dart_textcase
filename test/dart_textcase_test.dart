import 'package:dart_textcase/dart_textcase.dart';
import 'package:test/test.dart';

void main() {
  group('test cases', () {
    test('test applyCase', () {
      expect("Hello       world".snakeCase, "hello_world");
      expect("Hello\n\tworld".snakeCase, "hello_world");
      expect("Hello\n\r\tworld".snakeCase, "hello_world");
    });

    test('test flatcase', () {
      expect("Hello world".flatCase, "helloworld");
      expect("HelloWorld".flatCase, "helloworld");
      expect("Hello-World".flatCase, "helloworld");
      expect("Hello_world".flatCase, "helloworld");
    });

    test('test upperFlatCase', () {
      expect("Hello world".upperFlatCase, "HELLOWORLD");
      expect("HelloWorld".upperFlatCase, "HELLOWORLD");
      expect("Hello-World".upperFlatCase, "HELLOWORLD");
      expect("Hello_world".upperFlatCase, "HELLOWORLD");
    });

    test('test camelCase', () {
      expect("Hello world".camelCase, "helloWorld");
      expect("HelloWorld".camelCase, "helloWorld");
      expect("Hello-World".camelCase, "helloWorld");
      expect("Hello_world".camelCase, "helloWorld");
    });

    test('test pascalCase', () {
      expect("Hello world".pascalCase, "HelloWorld");
      expect("HelloWorld".pascalCase, "HelloWorld");
      expect("Hello-World".pascalCase, "HelloWorld");
      expect("Hello_world".pascalCase, "HelloWorld");
    });

    test('test snakeCase', () {
      expect("Hello world".snakeCase, "hello_world");
      expect("HelloWorld".snakeCase, "hello_world");
      expect("Hello-World".snakeCase, "hello_world");
      expect("Hello_world".snakeCase, "hello_world");
    });

    test('test camelSnakeCase', () {
      expect("Hello world".camelSnakeCase, "hello_World");
      expect("HelloWorld".camelSnakeCase, "hello_World");
      expect("Hello-World".camelSnakeCase, "hello_World");
      expect("Hello_world".camelSnakeCase, "hello_World");
    });

    test('test pascalSnakeCase', () {
      expect("Hello world".pascalSnakeCase, "Hello_World");
      expect("HelloWorld".pascalSnakeCase, "Hello_World");
      expect("Hello-World".pascalSnakeCase, "Hello_World");
      expect("Hello_world".pascalSnakeCase, "Hello_World");
    });

    test('test kebabCase', () {
      expect("Hello world".kebabCase, "hello-world");
      expect("HelloWorld".kebabCase, "hello-world");
      expect("Hello-World".kebabCase, "hello-world");
      expect("Hello_world".kebabCase, "hello-world");
    });

    test('test screamingKebabCase', () {
      expect("Hello world".screamingKebabCase, "HELLO-WORLD");
      expect("HelloWorld".screamingKebabCase, "HELLO-WORLD");
      expect("Hello-World".screamingKebabCase, "HELLO-WORLD");
      expect("Hello_world".screamingKebabCase, "HELLO-WORLD");
    });

    test('test headerCase', () {
      expect("Hello world".headerCase, "Hello-World");
      expect("HelloWorld".headerCase, "Hello-World");
      expect("Hello-World".headerCase, "Hello-World");
      expect("Hello_world".headerCase, "Hello-World");
    });
  });
}
