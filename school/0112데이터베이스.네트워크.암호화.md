<h2 id="toc_0">자료구조 vs 데이터베이스</h2>

<p>자료구조 : 대부분 주기억장치에서 이루어질 내용<br>
데이터베이스 : 대부분 보조기억장치에서 이루어질 내용. 여러사람에 의해 공유되어 사용될 목적으로 통합하여 관리된 데이터집합
얼마나 체계적으로 저장하고 불러올 수 있느냐<br>
데이터베이스 관리 시스템 (DBMS)</p>

<h2 id="toc_1">데이터베이스</h2>

<ul>
<li>관계형 </li>
<li>키-값형</li>
<li>객체형</li>
<li>문서형</li>
<li>컬럼형</li>
</ul>

<h2 id="toc_2">DBMS</h2>

<ul>
<li><p>DataBase Management System</p></li>
<li><p>database에 접근할 수 잇는 기능을 제공하는 소프트웨어<br>
즉, 데이터베이스계의 운영체제</p></li>
<li><p>MySQL, P,ostgreSQL, SQLite, MariaDB, ...</p></li>
</ul>

<h2 id="toc_3">SQL</h2>

<ul>
<li><p>Structured Query Language</p></li>
<li><p>DBMS를 통해 데이터를 관리하기 위한 구조화된 질의문을 작성하기 위한 언어<br>
ex) "이름만 뽑아줘" selec 이름 from 사람</p></li>
<li><p>관계형 데이터베이스 관리 시스템에서 사용</p></li>
</ul>

<h2 id="toc_4">Network</h2>

<ul>
<li>TCP/IP</li>
<li>Protocol - http, https, ftp, sftp, telnet, ssh, ssl, smtp...</li>
<li>Port</li>
<li>DNS</li>
<li>OSI 7 Model</li>
</ul>

<p><img src="http://image.slidesharecdn.com/computernetworkdefinition-150513083841-lva1-app6891/95/computer-network-definition-6-638.jpg?cb=1431506416" alt=""></p>

<h3 id="toc_5">LAN</h3>

<ul>
<li>근거리 통신망</li>
<li>Local Area Network</li>
</ul>

<h3 id="toc_6">MAN</h3>

<p>도시권 통신망
메트로폴리탄 </p>

<h3 id="toc_7">WAN</h3>

<ul>
<li>광역 통신망</li>
<li>wide </li>
</ul>

<h3 id="toc_8">TCP/IP</h3>

<ul>
<li>TCP (Transmission Control Protocol)<br></li>
<li>IP (Internet Protocol)</li>
</ul>

<h3 id="toc_9">WWW</h3>

<ul>
<li>World Wide Web</li>
<li>문서(웹페이지)들이 있는 정보 저장소</li>
<li>분산과 연결 : 흩어져 있는 저장소가 서로 연결되어있다</li>
</ul>

<h3 id="toc_10">URL</h3>

<ul>
<li>Uniform Resource Locator</li>
<li>[Protocal]://[Host]:[Port]/[Path]</li>
<li>http://www.daum.net:80/map</li>
<li>ftp://id:pw@192.168.1.10:777/mydir</li>
<li>file://localhost/movie//baseball.avi</li>
</ul>

<h3 id="toc_11">프로토콜</h3>

<ul>
<li>통신규약</li>
<li>장비 사이에서 메시지를 주고받는 양식</li>
</ul>

<p>http://www.naver.com/cafe</p>

<p><strong>[Protocal]</strong>://[Host]:[Port]/[Path]</p>

<h2 id="toc_12">http</h2>

<ul>
<li><p>Hyper Text Transfer Protocol</p></li>
<li><p>PING : IP 네트워크를 통해 특정한 호스트가 도달할 수 있는지의 여부를 확인하기 위한 도구</p></li>
<li><p>패킷 : 패킷 방식의 컴퓨터 네트워크가 전달하는 데이터의 형식화된 블록 단위</p></li>
</ul>

<h3 id="toc_13">http 요청방식</h3>

<h5 id="toc_14">- GET : 주소창에 정보를 노출시키는 방식 (URL에 변수를 포함시켜 요청)</h5>

<p>www.google.com/?q=apple
빨리 불러오는 장점은 있지만 최신이 아닐 수 있다.<br>
get방식으로 가져오면 내컴퓨터에 이미 캐시가 되어있다. 그래서 과거의 데이터를 불러올 수 있다. 새로고침    </p>

<div><pre><code class="language-none">- 데이터가 헤더에 포함되어 전달됨   
- URL에 데이터가 노출됨  
- 길이 제한이 있음  
- 캐시될 수 있음  
- 패킷?, ping?</code></pre></div>

<p><img src="http://cfile25.uf.tistory.com/image/15182D364E9B971809AA2D" alt=""></p>

<h5 id="toc_15">- POST : 주소가 숨겨져서 바디에 정보를 실어서 보낼 수 있다 (데이터가 본문BODY에 포함되어 전달됨)</h5>

<p>-post는 해당 서버를 찾아가서 불러온다.<br>
-URL에 데이터가 노출되지 않음<br>
→ 즐겨찾기 추가 불가<br>
-길이 제한이 없음<br>
-캐시되지 않음<br>
<img src="http://cfile29.uf.tistory.com/image/113C2A354E9B97F40CE65B" alt=""></p>

<ul>
<li>GET</li>
<li>POST</li>
<li>PUT</li>
<li>DELET</li>
<li>HEAD</li>
<li>TRACE</li>
<li>OPTIONS</li>
<li>CONNECT</li>
</ul>

<h2 id="toc_16">HTTP vs HTTPS</h2>

<p>HTTP는 Hypertext Transfer Protocol의 약자다. 즉 Hypertext 인 HTML을 전송하기 위한 통신규약을 의미한다. HTTPS에서 마지막의 S는 Over Secure Socket Layer의 약자로 Secure라는 말을 통해서 알 수 있듯이 보안이 강화된 HTTP라는 것을 짐작할 수 있다. HTTP는 암호화되지 않은 방법으로 데이터를 전송하기 때문에 서버와 클라이언트가 주고 받는 메시지를 감청하는 것이 매우 쉽다. 예를들어 로그인을 위해서 서버로 비밀번호를 전송하거나, 또는 중요한 기밀 문서를 열람하는 과정에서 악의적인 감청이나 데이터의 변조등이 일어날 수 있다는 것이다. 이를 보안한 것이 HTTPS다.</p>

<h2 id="toc_17">FTP</h2>

<ul>
<li>file transfer protocol</li>
<li>sftp 알아보자</li>
<li>https (Hypertext Transfer Protocol over Secure Socket Layer)<br>
소켓 통신에서 일반 텍스트를 이용하는 대신에, SSL이나 TLS 프로토콜을 통해 세션 데이터를 암호화한다. </li>
</ul>

<h2 id="toc_18">TELNET</h2>

<ul>
<li>TErminaL NETwork : 암호화 되어있지 않음</li>
<li>원격 로그인을 위한 프로토콜 </li>
</ul>

<h2 id="toc_19">SSH</h2>

<ul>
<li>secure shell : 암호화 되어있음</li>
<li>네트워크 상의 다른 컴퓨터에 로그인하거나
원격 시스템에서 명령을 실행하고 다른 시스템으로 
파일을 복사할 수 있도록 해주는 
응용 프로그램 또는 그 프로토콜</li>
<li>Telnet의 대용 목적으로 설계</li>
</ul>

<h2 id="toc_20">SSL</h2>

<ul>
<li>secure socket layer</li>
<li>웹서버와 브라우저 사이의 보안을 위한 프로토콜</li>
</ul>

<p>HTTPS와 SSL를 같은 의미로 이해하고 있는 경우가 많다. 이것은 맞기도 틀리기도 하다. 그것은 마치 인터넷과 웹을 같은 의미로 이해하는 것과 같다. 결론적으로 말하면 웹이 인터넷 위에서 돌아가는 서비스 중의 하나인 것처럼 HTTPS도 SSL 프로토콜 위에서 돌아가는 프로토콜이다.</p>

<h2 id="toc_21">SMTL</h2>

<p>Simple Mail Transfer Protocol
전자메일 발송 프로토콜</p>

<h2 id="toc_22">HOST</h2>

<p>호스트 : 네트워크에 연결된 장치
호스트 이름 : 네트워크에 연결된 장치에 부여되는 고유한 이름
예) IP주소, 도메인 주소, MAC주소 등등</p>

<h2 id="toc_23">IP Address</h2>

<ul>
<li>Internet Protocol Address</li>
<li>컴퓨터 네트워크에서 장치들이 서로를 인식하고 통신을 하기 위해서 사용하는 번호</li>
</ul>

<p>고갈된 ip는 어떻게 부여받을까</p>

<h3 id="toc_24">Domain Address</h3>

<ul>
<li>네트워크 상에서 컴퓨터를 식별하는 호스트 이름</li>
</ul>

<h2 id="toc_25">DNS</h2>

<ul>
<li>Domain Name System</li>
<li>호스트의 도메인 이름을 호스트의 네트워크 주소로 바꾸거나 그 반대의 변환을 수행</li>
</ul>

<p><img src="https://i-technet.sec.s-msft.com/dynimg/IC195483.gif" alt=""></p>

<p>DHCP 임대갱신 : 새로운 IP를 받겠다</p>

<h2 id="toc_26">MAC Address</h2>

<ul>
<li><p>Media Access Control Address</p></li>
<li><p>네트워크 어댑터에 부착된 식별자</p></li>
</ul>

<h2 id="toc_27">Port</h2>

<ul>
<li><p>가상의 논리적 통신 연결단</p></li>
<li><p>번호로 구분</p></li>
<li><p><a href="https://ko.wikipedia.org/wiki/TCP/UDP%EC%9D%98_%ED%8F%AC%ED%8A%B8_%EB%AA%A9%EB%A1%9D">TCP/UDP의<em>포트</em>목록</a></p></li>
</ul>

<div><pre><code class="language-none">20 : FTP(data)
21 : FTP(제어)
22 : SSH
23 : 텔넷
53 : DNS
80 : 월드 와이드 웹 HTTP
119 : NNTP
443 : TLS/SSL 방식의 HTTP</code></pre></div>

<p>www.googl.com:80 -> http 통신번호<br>
 www.google.com:445 -> 우리한테 없는 포트야. 안들여보내 줌 (혹은 막아놨거나)
<br /><br /></p>

<h2 id="toc_28">OSI 7 계층 모형</h2>

<ul>
<li><p>Open Systems Interconnection Reference Model</p>

<p><img src="http://pds13.egloos.com/pds/200907/22/67/d0078067_4a666aa73c6c7.gif" alt=""></p></li>
</ul>

<p><img src="http://cfile28.uf.tistory.com/image/2112683A54FA6D3509D714" alt=""></p>

<h1 id="toc_29">암호화</h1>

<h2 id="toc_30">암호화 기법</h2>

<ul>
<li>대칭키</li>
<li>공개키(비대칭키)</li>
<li>해시</li>
</ul>

<h2 id="toc_31">대칭키 암호화</h2>

<ul>
<li><p>암호화와 복호화에 같은 암호키를 쓰는 알고리즘</p></li>
<li><p>DES, AES, SEED 등</p></li>
</ul>

<p><img src="http://cfile24.uf.tistory.com/image/2113703853FC4EA010ECFE" alt=""></p>

<h2 id="toc_32">공개키(비대칭키) 암호화</h2>

<ul>
<li>공개키로 암호화된 데이터를 비밀키를 사용하여 복호화할 수 있는 암호화 알고리즘</li>
<li>RSA 등</li>
<li>SSL (https통신이 이 방식)</li>
</ul>

<p><a href="http://daitso.kds.co.kr/27632/">RSA 암호화 ,공개키, 개인키 가 뭐지?</a></p>

<p><img src="http://cfile2.uf.tistory.com/image/277B684E55C22FBA0F4D2D" alt=""></p>

<h2 id="toc_33">암호화 해시 함수</h2>

<ul>
<li>임의의 데이터(암호 등)를 고정된 길이의 데이터로 매핑하여 원래의 입력값과의 관계를 찾기 어렵게 만든 것</li>
<li>SHA, MD5 등</li>
</ul>

<p><img src="http://www.epnc.co.kr/news/photo/201111/45400_42666_1.jpg" alt=""></p>

<p>참고자료
<a href="https://opentutorials.org/course/228/4894">https://opentutorials.org/course/228/4894</a></p>

<p><a href="https://namu.wiki/w/%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4">https://namu.wiki/w/데이터베이스</a>
<a href="https://ko.wikipedia.org/wiki/%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4">https://ko.wikipedia.org/wiki/데이터베이스</a></p>
