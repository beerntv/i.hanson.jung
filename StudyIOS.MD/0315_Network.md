## Network

연결을 통해 컴퓨터의 자원을 공유하는 것

![](https://thumbs.dreamstime.com/z/bedrijfs-online-netwerk-op-de-toepassingsvector-van-het-wolkenapparaat-47246099.jpg)

## 클라이언트 서버 모델 (client-server model)

![](http://cfile25.uf.tistory.com/image/212C963B568B2B6E17E637)

- network architecture 중 하나
	- 또다른 network 종류로는 p2p가 있다. (peer-to-peer network)
	- 중앙서버 없이 컴퓨터와 컴퓨터간을 연결. 개인이 공급자이자 소비자가 됨.
- setver : client 의 요청에 따라서 데이터를 제공해 주는 컴퓨터
- client : 서버로 부터 요청한 데이터를 받는 컴퓨터
- 각각의 컴퓨터가 client, server의 역할에 맞게 구성되어 network 통신이 이뤄진다면 우린 이걸 클라이언트 서버 모델이라고 부를 수 있다.

## Protocol

- http
- https
- ftp
- smtp
- SSH 맥에서 다른 컴에 연결할 때


## URL

Uniform Resource Locator, 문화어: 파일식별자
- 네트워크상에서 자원이 어디있는지를 알려주기 위한 규약

## URI
Uniform Resource Identifier

- url : 특정자원의 위치값 (실제파일 있음)

http://naver.com/index.html

- uri : Restful 구조. 특정자원의 함수 (실제 파일 없음. 이름표)

http://naver.com/basefile 

![](https://4.bp.blogspot.com/-AG9PUSpz2Ss/UV1o7jnPRlI/AAAAAAAAA90/1qI9M2lZqnE/s1600/RestfuArchitecture.jpg
![](https://www.openprogrammer.info/wp-content/uploads/2015/01/buildingRestApi.jpg)

## http request

uri 를 이용해서 server에 데이터를 요청한다.
크게 header와 body로 구조를 나눌 수 있다.
http method를 사용해서 요청메시지를 보낸다. (권장)


![](https://2.bp.blogspot.com/-ATf_71UvxkI/V6iZSnciLLI/AAAAAAAAAfg/FyeGcATjy2UTUiwDT0nRFeB99Mqs1CagQCLcB/s1600/http-14-638.jpg)

[참고  http://goo.gl/xjH2ke](http://goo.gl/xjH2ke)

## http request 구조

Request-Line   
Header

[Message-body]


## Request Header

### header는 정보
### response 헤더 도 있다.

- Host

- Accept : 항목. 항목보고 판단. 틀리면 reject

- User-agent

## Contents Type

- 서버, 클라이언트 간에 어떠한 데이터를 주고 받을 수 있는지 명시하는 Type

대표 Type 종류

Multipart 복잡한거 주고받을 때. 예를 들어 이미지랄지 파일 업로드 할때 쓴다.

## Message Body

GET GTTP  Method의 파라미터는 URL에 포함시켜서 정보를 보낸다.

ex) http://siteURI/age?firstName=joo&lastName=ym

GET 을 제외한 나머지 Method의 파라미터는 content-type에 맞는 형식으로 body message에 포함시켜서 요청을 보낸다. 
(확인하는 정도의 수준으로 보냄)

형식 : 물음표 키=밸류&키=밸류

보안에 취약

## ATS

ATS (app transport security)

- iOS9 이상의 버전에는 ATS 기술이 기본적으로 적용된다. ATS는 앱과 웹서비스 간 연결보안을 강화하는 기술로 이 기술이 적용되면 기본 iOS 앱에서 암호화도지 않은 HTTP 통신은 OS 내부에서 강제적으로 차단된다.

- 보안이 안돼있는 요청을 iOS에서 거부

## using http request


#### request 객체 만들때 필요한 4가지

- url 통해서 객체 만들고 NSURL
- 메소드 종류, 컨텐츠 타입 
- 바디 (데이터값 바디에 넣으면 된다. 헤더에 뭔가 필요하다면 헤더 추가)
- 필요하다면 컨텐츠타입




폼데이터  키,값,&,키,값,& username=%@&device=%@


task 종류 3가지 - 업로드, 다운로드, 데이터테스크

포스트는 업로드 방식

리퀘스트를 보낼때 정보가 헤더에 있다. 아이폰에서 보냈는지 맥에서 보냈는지 등등
서버는 헤더를 보고 바디를 참고

컨텐츠 타입

대표 type 종류



