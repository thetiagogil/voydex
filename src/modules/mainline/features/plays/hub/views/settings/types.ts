import type { PlayTracking } from "@/config/play-tracking";
import type {
  ChallengeRuleChoice,
  PlayRuleSelection,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { RulePreset } from "@/modules/mainline/shared/data/rule-presets";
import type { GameTypeChoice } from "@/modules/reference/features/games/domain/game-types";

export type PlaySettingsStatus = { id: number; name: string; slug: string };

export type PlaySettingsExpansion = { name: string; versionGroupId: number };

/* A rule or tag the Play can keep, shown as a chip. */
export type PlaySettingsChoice = {
  id: string;
  name: string;
};

/* Play settings (v3 `settings`): what this Play is and what it keeps. */
export type MainlinePlaySettingsData = {
  expansions: PlaySettingsExpansion[];
  general: {
    name: string;
    playtimeMinutes: number | null;
    startedOn: string | null;
    statusId: number;
    trainerName: string | null;
  };
  /* The game has collectibles, so Tracking offers the switch. */
  hasCollectibles: boolean;
  /* Archived Plays offer Restore where others offer Archive. */
  isArchived: boolean;
  /* Voydex's presets and yours, each adding its rules in one go. */
  presets: RulePreset[];
  /* The rules you can attach: Voydex's own catalogue and your own. */
  rules: ChallengeRuleChoice[];
  selectedExpansionIds: number[];
  /* The rules this Play keeps, with its values for their options. */
  selectedRules: PlayRuleSelection[];
  selectedTagIds: string[];
  statuses: PlaySettingsStatus[];
  /* Your own tags, shared by all your Plays. */
  tags: PlaySettingsChoice[];
  /* What this Play tracks: Story, the Pokédex mode and Collectibles. */
  tracking: PlayTracking;
  /* The types the Play's game has, for Monotype. */
  types: GameTypeChoice[];
};
