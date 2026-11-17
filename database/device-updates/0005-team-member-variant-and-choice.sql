-- A rival's team may follow a Play choice and still have a variant to pick
-- (#199), so the check that kept the two apart goes.
ALTER TABLE tracking.mainline_opponent_team_members
    DROP CONSTRAINT mainline_opponent_team_members_one_variant_kind_check;

COMMENT ON COLUMN tracking.mainline_opponent_team_members.variant_slug IS 'With variant_label: a team that depends on something Voydex does not record (such as how an earlier battle went, or which rival the player has). A team may follow a Play choice as well: the recorded choice narrows the teams first, and the variant is what is left to pick.';
