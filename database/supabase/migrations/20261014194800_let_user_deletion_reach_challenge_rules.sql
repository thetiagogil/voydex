-- Deleting a user cascades to their custom challenge rules before the play and
-- plan links that use them, so an immediate RESTRICT check blocked the delete.
-- A deferred check runs at commit, after the links are gone: user deletion
-- succeeds, and a rule still in use still cannot be deleted on its own.
ALTER TABLE gameplay.mainline_play_challenge_rules
    DROP CONSTRAINT IF EXISTS mainline_play_challenge_rules_challenge_rule_id_fkey;

ALTER TABLE gameplay.mainline_play_challenge_rules
    ADD CONSTRAINT mainline_play_challenge_rules_challenge_rule_id_fkey FOREIGN KEY (challenge_rule_id) REFERENCES gameplay.mainline_challenge_rules (id) ON UPDATE CASCADE ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE planning.mainline_team_plan_challenge_rules
    DROP CONSTRAINT IF EXISTS mainline_team_plan_challenge_rules_challenge_rule_id_fkey;

ALTER TABLE planning.mainline_team_plan_challenge_rules
    ADD CONSTRAINT mainline_team_plan_challenge_rules_challenge_rule_id_fkey FOREIGN KEY (challenge_rule_id) REFERENCES gameplay.mainline_challenge_rules (id) ON UPDATE CASCADE ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED;
