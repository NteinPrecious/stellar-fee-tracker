-- Migration 007: Drop unused fee_snapshots table (Issue #909).
--
-- Created by migration 001 for a historical endpoint that never shipped.
-- Production code persists fee_stats data in fee_stats_snapshots (migration 006).

DROP INDEX IF EXISTS idx_fee_snapshots_captured_at;
DROP TABLE IF EXISTS fee_snapshots;
