## Dictionary (dict)

Dictionary는 "키(Key) - 값(Value)" 쌍을 요소로 갖는 컬렉션이다. Dictionary는 흔히 Map 이라고도 불리우는데, 키값으로 신속하게 값을 찾아내는 해시테이블(Hash Table) 구조를 갖는다. 파이썬에서 Dictionary는 "dict" 클래스로 구현되어 있다. Dictionary의 키(key)는 그 값을 변경할 수 없는 Immutable 타입이어야 하며, Dictionary 값(value)은 Immutable과 Mutable 모두 가능하다. 예를 들어, Dictionary의 키(key)로 문자열이나 Tuple은 사용될 수 있는 반면, 리스트는 키로 사용될 수 없다.

```objc

NSArray *array = @[@"Hello, world!"];

2중 array @[@[@"aaa", @"bbb", @"ccc"], @[@"ddd", @"eee", @"fff"]]

NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:
    @"value1", @"key1", @"value2", @"key2", nil];
    
2중 Dictionary @{{@"aaa":@"value", @"key":@"value"}}

Dictionary array[{@"aaa":@"value"}, {@"key":@"value"}]
```
