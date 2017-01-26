<h2>운영체제</h2>

<p><code>
linux,
MacOS,
windows,
ios
</code></p>

<blockquote>
  <p>왜 탄생하였나?</p>
</blockquote>

<p>공통으로 사용하는 하드웨어와 소프트웨어를 운영하는 프로그램이 필요하게 되었다.</p>

<h4>커널 - 뼈대</h4>

<h3>운영체제</h3>

<ul>
<li><strong>시스템 하드웨어 관리</strong></li>
</ul>

<p>사용자 프로그램의 오류나 잘못된 자원 사용을 감시
입출력 장치 등의 자원에 대한 연산과 제어를 관리</p>

<ul>
<li><strong>가상)시스템 서비스 제공</strong></li>
</ul>

<p>사용자에게 컴퓨터의 프록램을 쉽고 효율적어로 실행할 수 있는 환경 제공</p>

<ul>
<li><strong>자원관리</strong></li>
</ul>

<p>컴퓨터 시스템 하드웨어 및 소프트웨어 자원을 여러 사용자 간에 효율적 할당, 관리, 보호</p>

<h2>프로세스관리</h2>

<p>프로세스마다 얼만큼의 자원을 사용할 것인가 결정하는 것</p>

<h3>비선점 스케줄링 (Non-Preemptive)</h3>

<p>할당된 cpu를 다른 프로세스가 강제로 뺏어 사용할 수 없는 기법
한번 cpu를 할당받으면 작업이 완료될 때까지 cpu를 사용
문제점: 짧은(중요한)작업이 긴 작업을 기다리는 경우 발생
종류: FCFSM SJF, HRN, Deadline(기한부)
FCFS(First Come First Served)
FIFO</p>

<ul>
<li><p><strong>SJF(Shortest Job First)</strong> <br />
짧은거 먼저 프로세싱 <br />
평균대기시간 가장 적은 알고리즘 <br />
정확한 처리시간을 알 수 가 없고, 처리측정하는 비용도 발생</p></li>
<li><p><strong>Deadline</strong> <br />
일정시간동안 프로세스 완료하는 기법 <br />
제한시간 완료안될 경우 제거되거나 처음부터 다시 실행
스케줄링이 복잡해지며, 프로세스 실행시 집중적으로 요구되는 자원관리에 요구되는 자원관리에 오버해드가 발생</p></li>
<li><p><strong>Priority Based Scheduling(우선순위)</strong> <br />
프로세스마다 우선순위 부여 <br />
우선순위가 동일한 경우 FCFS기법으로 할당 <br />
가장 낮은 순위를 부여받은 프로세스의 무한연기 발생가능</p></li>
</ul>

<h3>Preemptive(선점 스케줄링)</h3>

<p>우선순위가 높은 프로세스가 강제로 cpu를 빼앗아 사용할 수 있는 기법
대화식 시분할 시스템(Time Sharing System)
단점-많은 오버헤드, 인터럽트용 타이머클럭 필요
종류-RR(Round Robin), SRT, 선점 우선순위, 다단계 큐(MQ), 다단계 피드백큐(MFQ)</p>

<ul>
<li><strong>Multy Queue Scheduling</strong> <br />
프로세스를 특정 그룹으로 분류할 수 있을 경우 그룹에 따라 각기 다른 준비단계 큐 사용
준비상태 큐 마다 다른 스켇줄링 기법 사용가능
다른 준비상태 큐로 이동불가
하위단계 준비 </li>
</ul>

<h2>주기억장치관리</h2>

<ul>
<li><p>단순관리</p></li>
<li><p>가상메모리 <br />
보조기억장치를 주기억장치처럼 활용</p></li>
</ul>

<h2>파일관리</h2>

<p>응용프로그램  운영체제  보조기억장치</p>

<p>파일 입출력 요청         파일 입출력 처리</p>

<h3>* 파일시스템</h3>

<p>unix - unix file system</p>

<p>linux - 확장 파일 시스템, ZFS, XFS...</p>

<p>mac os - HFS, HFS+... 
(조각모음이 없다. </p>

<p>windows - FAT, NTFS</p>

<h2>커널</h2>

<pre><code>applications, kernel, cpu/ memory/ devices
</code></pre>

<p>커널 : 운영체제의 핵심 - 파일을 읽고, 쓰고, cpu를 관리하고...등등</p>

<p><img src="http://i39.tinypic.com/2nsotuw.jpg" alt="" title="" /></p>

<h2>알고리즘</h2>

<p>*문제해결을 위한 절차/방법</p>

<p>*어떤 문제를 해결하기 위한 여러 동작들의 모음</p>

<p>ex) 테트리스를 잘 쌓으려면? - 옮긴다, 회전시킨다</p>

<p>ex) 여행가방을 꾸리려면? - 꺼내기 쉽게, 자주 쓰는 것, 부피에 맞게..</p>

<h2>자료구조</h2>

<p>*한정된 공간에 자료를 효율적으로 이용할 수 있는 방법론</p>

<p>*데이터를 구조적으로 표현하는 방식</p>

<p>ex)테트리스 - 빈틈이 안생기도록 옮기는게 알고리즘, 빈틈이 안생길만한 네모난 모양의 블럭으로 준비하는게 자료구조</p>

<p>ex)여행가방 - 가방에 맞게 짐(옷,충전기 등)을 규격화하는 것</p>

<h3>* 원시구조</h3>

<h3>* 선형구조</h3>

<h3>* 배열</h3>

<p>배열(신발장)은 데이터(학생)가 빠지더라도(전학) 배열을 줄이거나 늘릴 수 없다. 
데이터를 설명하지 않아도 배열의 주소만 알면 찾아갈 수 있다.</p>

<h3>* 연결리스트</h3>

<p>단순 연결리스트 - 중간에 데이터가 빠지면 다음데이터에게 순서를 부여
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Single_linked_list.png/800px-Single_linked_list.png" alt="" title="" /></p>

<p>이중 연결리스트 - 다음데이터 뿐만 아니라 앞데이터에게도 순서를 부여
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Doubly_linked_list.png/800px-Doubly_linked_list.png" alt="" title="" /></p>

<p>원형 연결리스트 - 마지막데이터와 처음데이터를 연결
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Circurlar_linked_list.png/800px-Circurlar_linked_list.png" alt="" title="" /></p>

<p>ex) NSArray</p>

<h2>STACK</h2>

<p><img src="http://cfs3.tistory.com/upload_control/download.blog?fhandle=YmxvZzEyNDIxQGZzMy50aXN0b3J5LmNvbTovYXR0YWNoLzAvOS5wbmc%3D" alt="" title="" /></p>

<p>먼저 넣은 데이터를 나중에 꺼내는 방식 (LIFO)</p>

<h2>Queue</h2>

<p><img src="http://cfs2.tistory.com/upload_control/download.blog?fhandle=YmxvZzEyNDIxQGZzMi50aXN0b3J5LmNvbTovYXR0YWNoLzAvMTcucG5n" alt="" title="" /></p>

<h2>Dequeue</h2>

<p><img src="http://www.java2novice.com/images/dequeue.png" alt="" title="" />
double-ended queue</p>

<h2>TREE</h2>

<p><img src="http://phpden.info/images/bst-delete03.png" alt="" title="" /></p>

<h2>Graph</h2>

<p><img src="http://courses.cs.vt.edu/csonline/DataStructures/Lessons/Graphs/graph.gif" alt="" title="" /></p>

<h2>알고리즘</h2>

<h2>정렬 알고리즘</h2>

<p><a href="https://www.youtube.com/watch?v=kPRA0W1kECg">정렬 알고리즘 비교 영상</a></p>

<ul>
<li>선택정렬(selection) - 다 읽어들인 후 제일 작은 것부터   </li>
<li>버블정렬(bubble) - 옆에 애랑 비교후 큰애를 뒤로    </li>
<li>삽입정렬(insertion) - 두값을 비교해서 사이에 넣는 것      </li>
<li>병합정렬(merge) - 구간을 나눠서 정렬 후 합치는 것   </li>
<li>퀵정렬(quick) - 중간기준을 잡아서 반반 나눠서 크고 작은 것으로 구분. 평균적으로 가장 빠름. 기준을 잘못잡으면 항상 빠르진 않음</li>
</ul>

<p><a href="https://www.youtube.com/watch?v=Ns4TPTC8whw">춤으로 보는 정렬</a></p>

<h2>시간복잡도</h2>

<ul>
<li>알고리즘이 실행되는데 걸리는 시간 분석</li>
<li>점근 표기법 (대문자 O표기법)</li>
</ul>

<p>정렬 알고리즘의 시간복잡도</p>

<p>선택 - O(n^2)
버블 - O(n^2)
삽입 - O(n^2)
병합 - (nlogn)
퀵 - (nlogn)</p>

<p>탐색 알고리즘의 시간복잡도</p>

<p>선형탐색 - O(n)
이진탐색 - O(logn)</p>

<p><img src="http://cfile7.uf.tistory.com/image/244DA04556F497CF108667" alt="" title="" /></p>