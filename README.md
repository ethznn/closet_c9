CLOSET
======

> - 패션에 민감한 사람들을 위해서 그날 그날 입었던 옷을 저장하고 볼 수 있는 다이어리
> - 더 나아가 자신의 패션을 공유하며 다른 사람들과 패션의 이야기를 주고 받을 수 있는 커뮤니티 

> - master branch (production) / [closet.im](https://closet.im) Devise E-mail 인증 추가 후 오픈
> - development branch (development) / 다른 EC2 서버에서 개발 진행 중

Design
------

### Version

> -	ruby 2.5.0p0 (2017-12-25 revision 61468 [x86_64-linux]
> -	Rails 5.1.4
> -	Bootstrap v 4.0
> -	web module Amazon EC2 'ngnix'
> -	MySQL2

### DB

> -	Using MYSQL2
> -	devise user info + add_nickname_to_user
> -	[belongs_to user] record (modify scaffold)
> 	-	사진 첨부 (Amazon S3) DB에 S3링크 저장 방식

### INSTANCE

> -	Amazon EC2

### STORAGE

> -	Amazon S3 => 사용자 옷 기록 사진 저장

### PAGE

> - 모바일 최적화
> -	INDEX => 최대한 심플하게 
> -	calendar => 달력 화면 칸 누르면 정보가 modal 창으로
> -	community =? 자신의 달력화면 정보 공유 / 오픈 커뮤니티