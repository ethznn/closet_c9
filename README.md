CLOSET
======

> - 패션에 민감한 사람들을 위해서 그날 그날 입었던 옷을 저장하고 볼 수 있는 다이어리
> - 더 나아가 자신의 패션을 공유하며 다른 사람들과 패션의 이야기를 주고 받을 수 있는 커뮤니티 

Design
------

### Version

> -	ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]
> -	Rails 5.1.4
> -	Bootstrap v 4.0
> -	web module local 'puma' => Amazon EC2 'ngnix'
> -	MySQL2

### DB

> -	devise user info
> -	[belongs_to user] record (resource)
> 	-	사진 첨부 (Amazon S3) DB에 S3링크 저장 방식

### INSTANCE

> -	Amazon EC2

### STORAGE

> -	Amazon S3 => 사용자 옷 기록 사진 저장

### PAGE

> -	INDEX => 최대한 심플하게
> -	SAVE => form_tag
> -	SHOW => 달력 화면 칸 누르면 정보가 modal 창으로