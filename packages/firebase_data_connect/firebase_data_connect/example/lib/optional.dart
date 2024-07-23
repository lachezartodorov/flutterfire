abstract class JsonSerializable<T> {
  T fromJson();
}

class Optional<T extends JsonSerializable<T>> {
  Optional.fromJson(Map<String, Object?> json) {}
  OptionalStatus status = OptionalStatus.Unset;
  late T _value;
  toJson() {
    return "";
  }

  set value(T value) {
    _value = value;
    status = OptionalStatus.Set;
  }

  T get value {
    return _value;
  }
}

enum OptionalStatus { Unset, Set }

class OptionalValue<T> {
  OptionalStatus status = OptionalStatus.Unset;
}