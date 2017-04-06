// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.book.mongo;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class BookMongoSerializer
// **************************************************************************

abstract class _$BookMongoSerializer implements Serializer<Book> {
  Map toMap(Book model, {bool withType: false, String typeKey}) {
    Map ret = new Map();
    if (model != null) {
      if (model.id != null) {
        ret["id"] = new MongoId(#id).serialize(model.id);
      }
      if (model.name != null) {
        ret["N"] = model.name;
      }
      if (model.publishedYear != null) {
        ret["publishedYear"] = model.publishedYear;
      }
      if (modelString() != null && withType) {
        ret[typeKey ?? defaultTypeInfoKey] = modelString();
      }
    }
    return ret;
  }

  Book fromMap(Map map, {Book model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Book) {
      model = createModel();
    }
    model.id = new MongoId(#id).deserialize(map["id"]);
    model.name = map["N"];
    model.publishedYear = map["publishedYear"];
    return model;
  }

  String modelString() => "Book";
}
