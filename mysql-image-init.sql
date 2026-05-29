SET NAMES 'utf8mb4';
CREATE DATABASE IF NOT EXISTS image_database;
USE image_database;

-- image / post_image 테이블은 spring-image의 JPA(ddl-auto=update)가 시작 시 생성한다.
-- 이 스크립트는 데이터베이스만 준비한다.
