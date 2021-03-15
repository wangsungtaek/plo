-- 회원 수
SELECT count(*) cnt FROM P_USER;

-- 공지사항 수
SELECT count(*) cnt FROM P_NOTICE;

-- FAQ 수
SELECT count(*) cnt FROM P_FAQ;

-- 아티스트 수
SELECT count(*) cnt FROM P_ARTIST;

-- 앨범 수
SELECT count(*) cnt FROM P_ALBUM;

-- 음원 수
SELECT count(*) cnt FROM P_MUSIC;

SELECT * FROM P_PLAYLOG;

-- 페이지별 회원 리스트
SELECT * FROM (
	SELECT ROWNUM num, u.* FROM (
		SELECT * FROM P_USER ORDER BY U_NO
	) u
) WHERE num BETWEEN 1 AND 99999;

-- 회원 조회
SELECT * FROM P_USER WHERE u_no = 1;

-- 회원 업데이트
UPDATE P_USER
   SET u_pass = ?,
   	   u_name = ?,
   	   u_mail = ?,
   	   u_date = to_date(?, 'yyyy-mm-dd')
 WHERE u_no = ?;

-- 페이지별 아티스트 리스트
SELECT * FROM (
	SELECT ROWNUM num, u.* FROM (
		SELECT * FROM P_ARTIST ORDER BY ART_NO
	) u
) WHERE num BETWEEN 1 AND 10;

SELECT * FROM P_ARTIST;
SELECT * FROM P_USER;

-- 아티스트 업데이트
UPDATE P_ARTIST
   SET art_name = 'BLACKPINK',
   	   art_gender = '여성',
   	   art_group = '그룹',
   	   art_img = 'img/aasdf.png'
 WHERE art_no = 5;

-- 페이지별 앨범 리스트
SELECT * FROM (
	SELECT ROWNUM num, alb.* FROM (
		SELECT alb.*, art.art_name
		  FROM P_ARTIST art, P_ALBUM alb
		 WHERE art.art_no = alb.art_no
		ORDER BY alb_no DESC
	) alb
) WHERE num BETWEEN 1 AND 10;

-- 앨범 상세
SELECT alb.*, art.art_name
  FROM P_ARTIST art, P_ALBUM alb
 WHERE art.art_no = alb.art_no
   AND alb.alb_no=2;

SELECT * FROM P_ALBUM;

-- 앨범 업데이트
UPDATE P_ALBUM
   SET alb_name = ?,
   	   alb_shape = ?,
   	   alb_date = to_date(?, 'yyyy-mm-dd'),
   	   alb_img = ?,
   	   alb_intro = ?,
   	   art_no = ?
 WHERE alb_no = ?;
   	   
-- 페이지별 음원 리스트
SELECT * FROM (
	SELECT ROWNUM num, music.* FROM (
		SELECT m.*, a.alb_name
		  FROM P_MUSIC m, P_ALBUM a
		 WHERE m.alb_no = a.alb_no
		ORDER BY a.alb_no DESC
	) music
) WHERE num BETWEEN 1 AND 10;

-- 음원 상세
SELECT m.*, alb.alb_name
  FROM P_MUSIC m, P_ALBUM alb
 WHERE m.alb_no = alb.alb_no
   AND alb.alb_no=2;		
  
  
-- 음원 업데이트
UPDATE P_MUSIC
   SET m_name = ?,
       m_playnum,
       m_path,
       m_lyrics,
       alb_no
 WHERE m_no = ?;
