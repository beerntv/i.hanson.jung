iterm2.com 설치
http://brew.sh/index_ko.html
homebrew 주소복사 + 넣기
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update 
brew upgrade
brew install zsh

sudo vi /etc/shells
pw:

편집기 안에서 shift + g / shift + a
제일 아래줄 입력
/usr/local/bin/zsh
esc
:wq

chsh -s `which zsh`

iterm 껐다 켜고

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
iterm 에 입력

vi ~/.zshrc
ZSH THEME="robbyrussell" -> "agnoster"

아래 링크 두개 설치
http://ethanschoonover.com/solarized/files/solarized.zip

https://github.com/powerline/fonts/blob/master/Meslo/Meslo%20LG%20M%20DZ%20Regular%20for%20Powerline.otf

preference 에서 

sudo - 관리자 명령
찾아보기 - shell 명령, 리눅스 명령, vi 명령