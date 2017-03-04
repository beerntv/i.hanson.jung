```objc

//문자 개수 세기
NSLog (@"Length of str1 : %lu", [str1 length]);

//스트링 복사하기
res = [NSString stringWithString : str1];

//스트링을 다른 스트링 뒤에 붙여 복사하기
str2 = [str1 stringByAppendingString : str2];

//두 개의 스트링이 같은지 비교
if ([str1 isEqualToString : res] == YES)

//두 개의 스트링 크기 비교
NSComparisonResult compareResult;
compareResult = [str1 compare : str2];
if (compareResult == NSOrderedAscending)   // str1 < str2
if (compareResult == NSOrderedSame)   // str1 == str2

//대문자로 변환
res = [str1 uppercaseString];
NSLog (@"Uppercase conversion : %s", [res UTF8String]);

//소문자로 변환
res = [str1 lowercaseString];
NSLog (@"Lowercase conversion : %@",, res);

//스트링에서 처음부터 세번째까지 문자 추출하기
res = [str1 substringToIndex : 3];
NSLog (@"First 3 chars of str1 : %@", res);


//인덱스 5부터 끝까지 문자 추출하기
res = [str1 substringFromIndex : 5];

//인덱스 8부터 13까지 (6개문자) 추출하기
res = [[str1 substringFromIndex : 8] substringToIndex : 6];

//동일한 작업을 쉽게 하는 방법
res = [str1 substringWithRange : NSMakeRange (8, 6)];

//스트링안에 스트링 찾기
NSRange subRange;
subRange = [str1 rangeOfString : @"string A"];
NSLog (@"String is at index %lu, length is %lu", subRange.location, subRange.length);
if (subRange.location == NSNotFound) NSLog(@"String not found");

//수정 불가능한 스트링으로부터 수정 가능한 스트링 만들기
NSMutableString *mstr;
mstr = [NSMutableString stringWithString : str1];

//문자 집어넣기
[mstr insertString : @"mutable" atIndex : 7];

//맨 뒤에 넣는 경우 병합하기
[mstr insertString : @"and string B" atIndex : [mstr length]];

//혹은 appendString을 직접 사용
[mstr appendString : @"and string C"];

//범위로 주어진 서브스트링 지우기
[mstr deleteCharactersInRange : NSMaskRange (16, 13)];

//스트링의 범위 찾아 삭제하기
NSRange substr;
substr = [mstr rangeOfString : @"string B and "];
if (substr.location != NSNotFound)
[mstr deleteCharactersInRange  : substr];

// 수정가능한 스트링 직접 설정하기
[mstr setString : @"This is string A"];

//특정 범위를 다른 스트링으로 대체하기, 8번째부터 8개의 문자를 해당문자로 대체.
//대체문자가 길면 스트링크기는 늘어난다.
[mstr replaceCharactersInRange : NSMaskRange(8, 8) withString : @"a mutable string"];

//검색과 대치
search = @"This is";
replace = @"An example of";
NSRange substr;
substr = [mstr rangeOfString : search];
if (substr.location != NSNotFound)
[mstr replaceCharactersInRange : substr withString : replace];

//모두 찾아 대치하기
search = @"a";
replace = @"X";

substr = [mstr rangeOfString : search];

while (substr.location != NSNotFound) {
[mstr replaceCharactersInRange : substr withString : replace];
substr = [mstr rangeOfString : search];
}

// 다른 방법 (전부 대치)
[mstr replaceOccurrencesOfString : search
                                  withString : replace
                                      options : nil
                                        range : NSMaskRange (0, [mstr length])];


  1. NSString을 NSArray로 분리: componentsSeparatedByString: 사용
  NSString *myString = @"This is a test";
  NSArray *myWords = [myString componentsSeparatedByString:@" "];
   
  // 이제 myWords는: [@"This", @"is", @"a", @"test"]

  2. 여러 개의 토근을 사용할 경우: componentsSeparatedByCharactersInSet: 사용
  NSString *myString = @"Foo-bar/blee";
  NSArray *myWords = [myString componentsSeparatedByCharactersInSet:
  		[NSCharacterSet characterSetWithCharactersInString:@"-/"]];


  // 이제 myWords는 componentsSeparatedByCharactersInSet:: [@"Foo", @"bar", @"blee"]

  3. 스트링에 공백이 없고, 각 문자로 분리할 경우
  NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[myString length]];
  for (int i=0; i < [myString length]; i++) {
      NSString *ichar  = 
  [NSString stringWithFormat:@"%c", [myString characterAtIndex:i]];
      [characters addObject:ichar];
  }









```
