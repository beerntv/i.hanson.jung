JSON (JavaScript Object Notation)은 경량의 DATA-교환 형식이다. 이 형식은 사람이 읽고 쓰기에 용이하며, 기계가 분석하고 생성함에도 용이하다. JavaScript Programming Language, Standard ECMA-262 3rd Edition – December 1999의 일부에 토대를 두고 있다. JSON은 완벽하게 언어로 부터 독립적이지만 C-family 언어 – C, C++, C#, Java, JavaScript, Perl, Python 그외 다수 – 의 프로그래머들에게 친숙한 관습을 사용하는 텍스트 형식이다. 이러한 속성들이 JSON을 이상적인 DATA-교환 언어로 만들고 있다.

JSON은 두개의 구조를 기본으로 두고 있다:

name/value 형태의 쌍으로 collection 타입. 다양한 언어들에서, 이는 object, record, struct(구조체), dictionary, hash table, 키가 있는 list, 또는 연상배열로서 실현 되었다.

값들의 순서화된 리스트. 대부분의 언어들에서, 이는 array, vector, list, 또는 sequence로서 실현 되었다.

이러한 것들은 보편적인 DATA 구조이다. 사실상 모든 현대의 프로그래밍 언어들은 어떠한 형태로든 이것들을 지원한다. 프로그래밍 언어들을 이용하여 호환성 있는 DATA 형식이 이러한 구조들을 근간에 두고 있는 것은 당연하다.

JSON 에서, 이러한 형식들을 가져간다:

object는 name/value 쌍들의 비순서화된 SET이다. object는 { (좌 중괄호)로 시작하고 } (우 중괄호)로 끝내어 표현한다. 각 name 뒤에 : (colon)을 붙이고 , (comma)로 name/value 쌍들 간을 구분한다.

![](https://beerntv.files.wordpress.com/2017/02/object.gif?w=616)

array은 값들의 순서화된 collection 이다. array는 [ (left bracket)로 시작해서 ] (right bracket)로 끝내어 표현한다. , (comma)로 array의 값들을 구분한다.

![](https://beerntv.files.wordpress.com/2017/02/array.gif?w=616)
 

value는 큰따옴표안에 string, number ,true ,false , null, object ,array이 올수 있다. 이러한 구조들을 포함한다.

![](https://beerntv.files.wordpress.com/2017/02/value.gif?w=616)
 

string은 큰따옴표안에 둘러 싸인 zero 이상 Unicode 문자들의 조합이며, 쌍다옴표안에 감싸지며,backslash escape가 적용된다. 하나의 문자(character)도 하나의 문자열(character string)로서 표현된다. string은 C 또는 Java 문자열 처럼 매우 많이 비슷하다.

![](https://beerntv.files.wordpress.com/2017/02/string.gif?w=616)
 
number는 8진수와 16진수 형식을 사용하지 않는것을 제외하면 C와 Java number 처럼 매우 많이 비슷하다.

![](https://beerntv.files.wordpress.com/2017/02/number.gif?w=616)
 

토근들의 어떤 쌍 사이에 공백을 삽입할수 있다. 드물게 encode된 세부 항목을 제외하면, 이렇게 설명된 JSON의 형식은 완벽하게 그 언어를 설명한다.