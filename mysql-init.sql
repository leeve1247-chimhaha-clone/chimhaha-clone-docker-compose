SET NAMES 'utf8mb4'; # 이렇게 해야 datagrip 과 mysql 사이에 인코딩 오류가 사라짐
CREATE DATABASE IF NOT EXISTS clone_database;
use clone_database;
drop table if Exists post_category;
create table post_category
(
    id        bigint auto_increment
        primary key,
    level     int          not null,
    `key`     varchar(255) not null,
    parent_id bigint       null,
    message   varchar(255) null,
    korean    varchar(255) null,
    constraint UKstx3j6viwuqkmhnlf5wq096os
        unique (`key`, level),
    constraint FKmq1hp15hc97vp5tcvenjcrnlv
        foreign key (parent_id) references post_category (id)
);

INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (1, 0, 'TOPIC', null, '용건만 간단히, 움짤은 한 번 더 생각', '나라');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (2, 0, 'EVENT', null, '금병영에 상의하세요', '이벤트');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (3, 0, 'SUPPORT', null, '야생의 이벤트가 열렸다', '행정실');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (4, 1, 'SUPPORT', 3, null, '행정실');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (5, 1, 'EVENT', 2, null, '이벤트');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (6, 2, 'PHOTO', 4, null, '사진첩');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (7, 2, 'APPLY_TOPIC', 4, null, '게시판 요청');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (8, 2, 'APPLY_EMOJI', 4, null, '이모티콘 공모');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (9, 2, 'APPLY_STORE', 4, null, '팝업 신청 게시판');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (10, 2, 'APPLY_CAREER', 4, null, '침투부 지원하기');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (11, 2, 'APPLY_BANNER', 4, null, '침하하 두들');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (12, 2, 'REPORT', 4, null, '신고 / 건의');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (13, 1, 'CEO', 1, null, '침착맨');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (14, 1, 'BEST', 1, null, '웃음');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (15, 1, 'SPORTS', 1, null, '스포츠');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (16, 1, 'HOBBY', 1, null, '취미');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (17, 1, 'CEO_HOBBY', 1, null, '인방');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (18, 1, 'LIFE', 1, null, '일상(익명)');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (19, 1, 'GOODS', 1, null, '구쭈');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (20, 2, 'NOTICE', 13, null, '방송일정 및 공지');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (21, 2, 'CEO', 13, null, '침착맨');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (22, 2, 'FAKE_CEO', 13, null, '독깨팔');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (23, 2, 'TEMP_NOTICE', 13, null, '팝업 게시판');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (24, 2, 'CEO_IMAGES', 13, null, '침착맨 짤');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (25, 2, 'USER_DRAWS_CEO', 13, null, '침착맨 팬아트');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (26, 2, 'APPLY_STREAMING', 13, null, '방송 해줘요');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (27, 2, 'USER_RECOMENDATION', 13, null, '추천 침투부 & 찾아요');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (28, 2, 'APPLY_SHORTS', 13, null, '쇼츠 만들어줘요');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (29, 2, 'APPLY_MUSIC', 13, null, '음악방송 신청곡');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (30, 2, 'CEO_SELF_DRAWS', 13, null, '침착맨의 그림');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (31, 2, 'BEST_ARTICLE', 14, null, '알렉산드리아 짤 도서관');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (32, 2, 'BEST_IMAGES', 14, null, '짤');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (33, 2, 'BETTER_ARTICLE', 14, null, '유머');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (34, 2, 'GOOD_ARTICLE', 14, null, '호들갑');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (35, 2, 'ELDER_ARTICLE', 14, null, '아재개그');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (36, 2, 'STORY', 14, null, '이야기 & 썰');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (37, 2, 'SOCCER', 15, null, '축구');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (38, 2, 'BASEBALL', 15, null, '야구');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (39, 2, 'BASKETBALL', 15, null, '농구');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (40, 2, 'ETC_SPORTS', 15, null, '기타스포츠');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (41, 2, 'HOBBY', 16, null, '취미');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (42, 2, 'PET', 16, null, '반려동물');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (43, 2, 'FOOD', 16, null, '음식&여행');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (44, 2, 'IDOL', 16, null, '아이돌');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (45, 2, 'MUSIC', 16, null, '음악');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (46, 2, 'GAME', 16, null, '게임');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (47, 2, 'FITNESS', 16, null, '운동&다이어트');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (48, 2, 'MOVIE', 16, null, '영화&드라마');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (49, 2, 'BEAUTY', 16, null, '패션&뷰티');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (50, 2, 'LOL', 16, null, '리그 오브 레전드');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (51, 2, 'ANIME', 16, null, '애니&만화');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (52, 2, 'PLANT', 16, null, '식물');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (53, 2, 'SCIENCE', 16, null, 'IT&과학');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (54, 2, 'STREAMING', 17, null, '인터넷방송');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (55, 2, 'VTUBER', 17, null, '버튜버');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (56, 2, 'CEO_GOODS', 19, null, 'ㅊㅊㅁ구쭈');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (57, 2, 'EXT_STORE_LINK', 19, null, '얼렁뚱땅 상점');
INSERT INTO clone_database.post_category (id, level, `key`, parent_id, message, korean) VALUES (58, 2, 'REVIEW', 19, null, '구쭈 후기');
