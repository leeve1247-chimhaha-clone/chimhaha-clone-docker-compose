SET NAMES 'utf8mb4';
CREATE DATABASE IF NOT EXISTS notification_database;
USE notification_database;

CREATE TABLE IF NOT EXISTS notification (
    id          BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id     VARCHAR(128) NOT NULL,          -- Keycloak sub (JWT 'sub' claim)
    type        VARCHAR(64)  NOT NULL,          -- 'PostCreated' 등
    post_id     VARCHAR(64)  NULL,              -- 출처 post id
    title       VARCHAR(255) NULL,
    body        VARCHAR(512) NULL,
    is_read     BOOLEAN      NOT NULL DEFAULT FALSE,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_notification_user (user_id, created_at DESC)
);

-- Idempotency ledger: 같은 event-id 두 번 처리 안 함
CREATE TABLE IF NOT EXISTS processed_event (
    event_id      VARCHAR(128) PRIMARY KEY,
    consumer_group VARCHAR(64) NOT NULL,
    processed_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);
