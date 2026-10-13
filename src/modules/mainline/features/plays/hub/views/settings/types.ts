export type PlaySettingsStatus = { id: number; name: string; slug: string };

export type PlaySettingsExpansion = { name: string; versionGroupId: number };

export type PlaySettingsRule = {
  description: string | null;
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
  /* Archived Plays offer Restore where others offer Archive. */
  isArchived: boolean;
  /* The rules you can attach: Voydex's own catalogue and your own. */
  rules: PlaySettingsRule[];
  selectedExpansionIds: number[];
  selectedRuleIds: string[];
  statuses: PlaySettingsStatus[];
};
