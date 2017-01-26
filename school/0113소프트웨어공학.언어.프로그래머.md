<h2 id="toc_0">소프트웨어 공학</h2>

<p>소프트웨어의 개발, 운용, 유지보수 및 폐기에 대한 체계적인 접근방법</p>

<h2 id="toc_1">소프트웨어 개발 생명주기 모델</h2>

<ul>
<li>software development life cycle model</li>
<li>소프트웨어를 어떻게 개발할 것인가에 대한 전체적인 흐름</li>
</ul>

<h2 id="toc_2">폭포수 모델</h2>

<p>software architecture 골격을 세우는 단계</p>

<ul>
<li>앞단계가 진행되지 않으면 뒷단계가 진행되지 않음</li>
<li>앞단계의 오류는 돌이킬 수 없다</li>
</ul>

<p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Waterfall_model.svg/1280px-Waterfall_model.svg.png" alt=""></p>

<h2 id="toc_3">프로토타입 모델</h2>

<p><img src="http://pds16.egloos.com/pds/201001/11/07/d0057007_4b4b1a73d7d77.jpg" alt=""></p>

<ul>
<li>부실설계의 우려 -  프로토타입으로 마무리하려는 심리</li>
<li>개발과 구현이 중복될 수 있다. 시간이 걸림</li>
<li>클라이언트의 요구, 커뮤니케이션의 비용이 커질 수 있다</li>
</ul>

<h2 id="toc_4">나선형 모델</h2>

<p><img src="http://cfile8.uf.tistory.com/image/2539E340540FD67205DA03" alt=""></p>

<ul>
<li>전체적인 시간이 늘어날 수 있다</li>
<li>커뮤니케이션 비용이 가장 많을 수 있다</li>
</ul>

<h2 id="toc_5">소프트웨어 개발 방법론</h2>

<ul>
<li><p>소프트웨어를 생산하는데 필요한 반복적인 과정들을 정리한 것</p></li>
<li><p>구조적 프로그래밍, 객체지향, 고속개발 방법론, 익스트림 프로그래밍(Agile), 스크럼, UP...</p></li>
</ul>

<h2 id="toc_6">애자일 개발 프로세스</h2>

<ul>
<li>특정 개발 방법론을 가리키는 말이 아니라 민첩한(애자일) 개발을 가능하게 해주는 다양한 방법론을 통칭하는 말</li>
<li>고전적 방법론과 구별되는 가장 큰 차이는 less document-oriented (문서를 통한 개발)가 아니라 code-oriented (실질적인 코딩을 통한 개발) 의 방법론</li>
</ul>

<p>애자일 방법론 <a href="http://neoitstory.blogspot.kr/2014/06/blog-post_27.html">http://neoitstory.blogspot.kr/2014/06/blog-post_27.html</a></p>

<p>스크럼은 프로젝트 관리를 위한 애자일 방법론으로서 추정 및 조정 기반의 경험적 관리기법의 대표적인 형태입니다. 처음 시작은 1986년 타케우지 & 노나카 교수가 HBR에 기고한 “The New New Product Development Game” 이라는 기사를 그 기원으로 봅니다. 이후 1995년에 켄 슈와버와 제프 서덜랜드가 이 방법을 소프트웨어 개발에 소개하면서 스크럼이라 부르게 되었습니다.</p>

<p><img src="https://lh6.googleusercontent.com/AJQJ7ucNeqelSaxaxzmSIL8f3NV3MkfHkvg3Ro6pHjSqvUtUdp1cmUGUWqqNFP8tuxVbetBAZSSy-M01HvMMmDSfz8F3aPtClIbJSRiaR9EfPtEUOn3wOiPSdI9ipBoseg" alt=""></p>

<p><img src="https://t1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/QhM/image/Bs2hWeTYbx1_6wU5zkF8rZ9fHyc.gif" alt="">
<img src="https://lh5.googleusercontent.com/gV-CXEAvBGlb_Ub64IFK_vl7hn7WIOLgez6uhmIif6ErtOFt_uI88CyiUuikAGIWfeiPibDCDQxIM5vxNvOd7xXdhur1ILf90v95YB0GdtS7eTpx-n2t5udxsOy1Ff0PDQ" alt=""></p>

<h2 id="toc_7">uml</h2>

<p>표준화된 모델 범용 모델링 언어
제대로 모델링을 하면 기초적인 부분을 실제 개발을 해서 내줌</p>

<p><img src="http://upload.wikimedia.org/wikipedia/commons/c/cf/Umbrello_KDE_4.1.png" alt=""></p>

<h2 id="toc_8">TDD</h2>

<ul>
<li>테스트 주도 개발 (Test-driven development)</li>
<li>매우 짧은 개발 사이클을 반복하는 소프트웨어 개발 프로세스</li>
</ul>

<p><img src="http://seokjun.kr/content/images/2016/08/tdd-work-flow.gif" alt=""></p>

<ul>
<li>결함을 점검하는 자동화된 테스트 케이스를 작성</li>
<li>케이스를 통과하기 위한 최소한의 양의 코드 생성</li>
<li>새코드를 표준에 맞도록 리팩토링
<img src="http://www.hoons.net/FileUpload/201404/07/%EA%B7%B8%EB%A6%BC2.png" alt=""></li>
</ul>

<h2 id="toc_9">PDD</h2>

<ul>
<li>계획기반 계발 (plan-driven development)</li>
</ul>

<h2 id="toc_10">형상관리</h2>

<ul>
<li>SW개발 및 유지보수 과정에서 발생하는 소스코드, 문서, 인터페이스 등 각종결과물에 대해 형상을 만들고</li>
</ul>

<p>인생의 활동은 추상적인 활동들의 연속이다. 이것을 형상화 한 것이 출생신고 그리고 혼인 신고, 사망신고 등으로 우리들의 호적에서 변경 내용이 문서화 또는 기록화 되는 것과 유사하다.하드웨어 시스템을 개발할 때 구체적인 예로써 원자력발전소를 건설하는 사업(Program)에서 다양한 이해당사자(Stakeholder)와 소통을 하면서 통합적으로 관리하기 위해서는 설계요건, 물리적 실체(발전소), 시설 등의 정보를 문서화하여서 일관성을 수립하여서 관리하여야 한다. 또한 이러한 일관성을 전 수명기간 동안 유지해야 한다. 요구사항과 물리적 실체 그리고 시설 형상정보가 일치하여야 한다.</p>

<h2 id="toc_11">버전관리</h2>

<p>형상관리의 일부
일반적인 소프트웨어 소스 코드만의 형상을 관리하는 것
SVN Git Mercurial....</p>

<h2 id="toc_12">프로그래밍 언어</h2>

<p><img src="http://st.depositphotos.com/1756445/4385/i/950/depositphotos_43853655-stock-photo-word-cloud-programming-languages-or.jpg" alt=""></p>

<h2 id="toc_13">stackoverflow</h2>

<p>[<a href="http://stackoverflow.com/research/developer-survey-2016">http://stackoverflow.com/research/developer-survey-2016</a>]()</p>

<h3 id="toc_14">내가 쓰는 프로그래밍 언어 어디서왔나</h3>

<p><img src="https://github.com/Ekutz/Fast_Campus_JS/blob/master/170113/imgs/history.jpg?raw=true" alt="">
<a href="http://www.bloter.net/archives/196775">http://www.bloter.net/archives/196775</a></p>

<h3 id="toc_15">IT 거인들은 왜 프로그래밍 언어에 집착할까</h3>

<p><a href="http://www.bloter.net/archives/196547">http://www.bloter.net/archives/196547</a></p>

<h2 id="toc_16">프로그래밍 언어 종류</h2>

<h3 id="toc_17">고급언어에서 저급언어(기계어)로 변환되는 과정에 따른 분류</h3>

<ul>
<li><p>컴파일 언어 
C, C++, Go, objective-C ...<br>
고급언어를 기계어로 바꾸는 순간은 컴파일언어로 된 실행파일(exe)을 만들 때(번역어)<br>
빠르다 / 수정, 배포의 불편함이 있다. 시스템 환경에 따라 체계가 다르다(windows, mac..)</p></li>
<li><p>인터프리터 언어<br>
BASIC JavaScript Python Ruby....<br>
한줄한줄마다 동시통역을 하며 진행하는 언어<br>
소스코드(한줄)만 바꾸면 된다, 유지보수가 편리 / 느리다</p></li>
<li><p>바이트코드 언어<br>
Java, C#</p></li>
</ul>

<p>만능통역사(가상머신, JVM)를 두자<br>
범용적인 이식성(하드웨어 의존도 낮다), 컴파일과 인터프리터의 장점을 가져옴/ 리소스를 잡아먹음</p>

<h2 id="toc_18">JVM</h2>

<p>예를 들어 윈도우로 프로그램한 C를 다른 운영체제인 리눅스에서 실행하려 할 때 잘 실행이 안되는 경우가 있습니다. C언어의 경우 컴파일 시 이식성이 가장 낮은 어셈블리 어로 바뀌는데 이를 해결하려면 해당 플랫폼마다 코드를 바꿔주는 방법 밖에 없다. </p>

<p>그러나 자바의 경우 컴파일시 자바 바이트 코드로 변환이 된다.</p>

<p>원래 C언어로 작성된 소스를 컴파일 하면 CPU에 의해 동작하는 .exe의 바이너리 코드가 생성된다. 그런데  자바의 경우는 컴파일 시 .class 의 바이너리 코드가 생성됩니다. .exe파일 처럼 바로 실행되는 파일이 아니라 자바 가상머신(VM)에 올라가야 실행이 되는 바이너리 코드입니다. 이것을 자바 바이트 코드라 합니다.</p>

<p>자바의 처음 원시코드는 .java로 저장되어 지는데 자바 컴파일러인 javac에 의해 .class 바이트 코드로 변환이 됩니다. 이 상태로는 실행이 될 수 없고 마지막으로 이 .class코드를 자바가상머신(JVM)에서 java 명령어를 통해 실행이 되어 바이트 코드를 실행할 수 있는 파일로 바꿔주는 것입니다. 이렇게 .class처럼 별도의 컴파일 과정 없이 어느 플랫폼에서니 실행이 가능한 방식을 인터프리터 방식이라 합니다.</p>

<p><img src="http://soen.kr/lecture/library/java/1-1.files/image002.png" alt=""></p>

<p><img src="http://mblogthumb2.phinf.naver.net/20130214_133/web4click_1360807705100xvodH_PNG/%B1%D7%B8%B21.png?type=w2" alt=""></p>

<p><img src="http://gnujava.com/board/img/java/online/chap01/images/figure1-2.gif" alt=""></p>

<p><a href="http://m.blog.naver.com/web4click/110159692556">http://m.blog.naver.com/web4click/110159692556</a></p>

<p>JIT (Just In Time 컴파일방식) :  C나 C++에서 하는 것처럼 프로그램을 실행하기 전에 처음 한 번 컴파일하는 대신, 프로그램을 실행하는 시점에서 필요한 부분을 즉석에서 컴파일하는 방식을 말한다. 같은 코드를 매번 해석하는 대신 실행하기 전에 그 부분만 컴파일을 해 두고 다음부터는 컴파일된 코드를 쓰기 때문에 인터프리터의 느린 실행 성능을 개선할 수 있다</p>

<p><a href="https://namu.wiki/w/%EC%9E%90%EB%B0%94%20%EA%B0%80%EC%83%81%20%EB%A8%B8%EC%8B%A0">자바 가상 머신</a></p>

<p><a href="https://namu.wiki/w/%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C%20%EB%9F%B0%ED%83%80%EC%9E%84">안드로이드 런타임</a></p>

<h3 id="toc_19">프로그래밍 패러다임에 따른 분류</h3>

<p>패러다임 - 관점</p>

<ul>
<li><p>객체지향 프로그래밍 패러다임 : 프로그램을 상호작용하는 객체들의 집합으로 표현<br>
objective-c python swift, c++ c# ruby Java Perl</p></li>
<li><p>함수형 프로그래밍 패러다임 : 프로그램을 상태값을 지니지않은 함수값들의 연속으로 표현<br>
Python swift c++ c#</p></li>
</ul>

<h2 id="toc_20">객체지향 프로그래밍</h2>

<p>컴퓨터 프로그램을 명령어의 목록으로 보는 시각에서 벗어나 여러 개의 독립된 단위, 즉 "객체"들의 모임으로 파악, 객체간의 상호작용으로 프로그램의 동작을 구현하고자 하는 것</p>

<h2 id="toc_21">클래스와 객체</h2>

<p>클래스 -> 객체<br>
실질적인 형태 (클래스의 객체화)</p>

<p>클래스 - 객체의 공통적 기능을 설명해 놓은 것. 속성, 행위를 정의하는 틀 (템플릿, 설계도)</p>

<p>객체 - 클래스라는 설명서를 읽고 메모리에 구체적으로 생성한 것</p>

<h1 id="toc_22">Object 객체</h1>

<ul>
<li><p>행위가 미치는 목적물, 작용의 대상이 되는 쪽</p></li>
<li><p>의식과 행위를 가지는 형체</p></li>
</ul>

<p><img src="https://beerntv.files.wordpress.com/2017/01/83a29-dog.gif" alt=""></p>

<table>
<thead>
<tr>
<th style="text-align:center;">클래스</th>
<th style="text-align:center;">객체</th>
</tr>
</thead>

<tbody>
<tr>
<td style="text-align:center;">property</td>
<td style="text-align:center;">property values</td>
</tr>
<tr>
<td style="text-align:center;">methods</td>
<td style="text-align:center;">methods</td>
</tr>
</tbody>
</table>

<p><br /><br /></p>

<h2 id="toc_23">개발자 Developer</h2>

<ul>
<li><p>프로젝트를 만드는데에 기획부터 제작까지 참여하는 모든 사람</p></li>
<li><p>소프트웨어 프로그래머와 용어 차별을 두자</p></li>
</ul>

<h2 id="toc_24">서버 / 클라이언트</h2>

<ul>
<li>상대적 개념. 정보를 주면 서버, 받으면 클라이언트</li>
</ul>

<h2 id="toc_25">Front-end / Back-end</h2>

<p>back-end / front-end(api) <-> 클라이언트
<img src="https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAeDAAAAJGZmZWYzYzNkLWJhOTItNDk0Ny05YTExLTk4YzY0MTkxYTVmZg.png" alt=""></p>

<h2 id="toc_26">Thread</h2>

<p>프로세스 안에서 작업이 실행되는 흐름의 단위</p>

<h2 id="toc_27">멀티 스레드</h2>

<ul>
<li>Multi Thread - 다중 스레드</li>
<li>멀티 스레드 vs 멀티 태스크</li>
</ul>

<p>멀티 스레드 - 한 프로세스에 여러작업이 실행 (구연동화-인형을 움직이고 동화를 읽고)</p>

<p>멀티 태스크 - 한번에 여러가지 프로세스를 처리하는 환경 (동화도 틀고, 음악도 틀고)</p>

<p><img src="http://cfile5.uf.tistory.com/image/131FBE435047611713533A" alt=""></p>

<h2 id="toc_28">Library</h2>

<p>특정 기능을 수행하기 위한 클래스 또는 함수의 집합체</p>

<ul>
<li>수학 라이브러리</li>
<li>애니메이션 라이브러리</li>
<li>문자열 라이브러리</li>
</ul>

<h2 id="toc_29">API</h2>

<p>application Programming Interface (응용소프트웨어 프로그래밍 접합부)</p>

<ul>
<li>응용소프트웨어와 프레임워크 사이의 중간매체(방법)</li>
<li>소프트웨어 간의 통신을 위해 메시지를 전달하는 방식 등이 결정된 것</li>
<li>날씨api (날씨정보 s/w 를 가져갈 창구)</li>
</ul>

<p><img src="https://t1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/H9i/image/6Vjzg5SOoO_qVk0dW4f-B-ADAEw.png" alt=""></p>

<h2 id="toc_30">Framework</h2>

<blockquote>
<p>“당신이 애플파이를 맨 처음부터 만들고자 한다면, 세상을 먼저 만들어야 할 것이다.  If you want to make an apple pie from scratch, you must first create the universe.”
—칼 세이건, Carl Sagan</p>
</blockquote>

<p>프로그래밍에서 특정 운영 체제를 위한 응용 프로그램 표준 구조를 구현하는 클래스와 라이브러리 모임이다. 간단하게 프레임워크라고도 부른다.</p>

<p>재사용할 수 있는 수많은 코드를 프레임워크로 통합함으로써 개발자가 새로운 애플리케이션을 위한 표준 코드를 다시 작성하지 않아도 같이 사용된다. </p>

<p>자주 개발자들이 사용할 만한 기능을 미리 모아두고 개발자가 나름대로 기능을 확장, 설계, 변형하면서 사용해 나갈 수 있는 집합체</p>

<p>비유해보자면,
- 프레임워크 - 국가 (기반시설. 뼈대. 근간. 법, 도로, 시설 등등)<br>
- 프레임워크의 하위 프레임워크 - 정부부처<br>
- API - 국가기관<br>
- 라이브러리 - 직무 전문가<br>
- 프로그래밍 언어 - 국가 통용 언어<br>
- 레퍼런스 문서 - 국가 조직도 및 기능설명서   </p>

<p><img src="http://cfile3.uf.tistory.com/image/191176554D21262918FF89" alt=""></p>

<p>어플리케이션 프레임워크(Application Framework)란 무엇인가?</p>

<p><a href="http://vandbt.tistory.com/19">소프트웨어 디자인- Design Software by vandbt</a></p>

<h2 id="toc_31">안드로이드 프레임워크 + Java</h2>

<ul>
<li><p>android 라는 나라 모양에 내가 원하는 일을 할 수 있는 기업을 세우는 것</p></li>
<li><p>안드로이드라는 나라에서는 java라는 언어를 통해 의사소통 할 수 있다.</p></li>
</ul>

<h2 id="toc_32">디자인 패턴</h2>

<p>프로그램 개발에서 자주 나타나는 과제를 해결하기 위한 방법 중 하나<br>
과거의 소프트웨어 개발 과정에서 발견된 설계의 노하우에 이름을 붙여 이후에 재이용하기 좋은 형태로 묶어서 정리한 것</p>

<p>MVC (model-view-controller)<br>
M(데이터관리) - V(화면표시) - C(중재자)</p>

<ul>
<li>MVVM (model-view-viewmodel)<br></li>
<li>Observer<br></li>
<li>Singleton<br></li>
<li>Prototype<br>
....
<img src="https://www.formget.com/wp-content/uploads/2014/12/Controllers-Function-content-.png" alt=""></li>
</ul>

<h2 id="toc_33">IDE</h2>

<p>integrated development environment (통합개발환경)</p>

<h2 id="toc_34">SDK</h2>

<p>software development kit
소프트웨어 개발에 필요한 도구의 모음
ide + framework + tools....</p>

<h2 id="toc_35">웹프로그래머</h2>

<p><img src="http://cfile22.uf.tistory.com/image/26237E4E5664EE3808CA84" alt="">
<img src="http://cfile22.uf.tistory.com/image/226E044E5664EE3B300747" alt=""></p>

<p><a href="http://emptydream.tistory.com/3918">웹 개발자 직군 정리 - 백앤드, 프론트 앤드, 퍼블리셔 등</a></p>

<h2 id="toc_36">모바일 프로그래머</h2>

<p>웹서버 프로그래머 - python asp jsp php java....<br>
디자이너<br>
기획자<br>
다른 클라이언트 프로그래머<br>
또다른 모바일 프로그래머<br>
사용자<br>
...   </p>
