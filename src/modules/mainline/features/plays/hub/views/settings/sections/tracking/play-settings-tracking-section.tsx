import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PendingData } from "@/shared/components/pending-data";
import { SettingsRow } from "@/shared/components/settings-row";

/*
 * Tracking (v3 `settings`): what this Play keeps track of. Turning Story or
 * Collectibles off and the Pokédex mode wait for their settings columns.
 * Turning something off hides it; nothing recorded is deleted. Expansions
 * have their own card.
 */
export const PlaySettingsTrackingSection = () => (
  <DetailSectionCard
    id="tracking"
    title="Tracking"
    aside="Turning something off hides it. Nothing recorded is deleted."
  >
    <SettingsRow
      title="Story"
      description="Badges, the League and the milestones in between"
    >
      {/* TODO(v3-data): a Story tracking flag on `gameplay.mainline_play_settings` (track Story on or off). */}
      <PendingData variant="inline" label="On/off not in Voydex yet" />
    </SettingsRow>
    <SettingsRow title="Pokédex" description="Caught only, or caught and seen">
      {/* TODO(v3-data): a Pokédex mode on `gameplay.mainline_play_settings` (caught only vs caught and seen); only `pokedex_tracking_enabled` exists. */}
      <PendingData variant="inline" label="Mode not in Voydex yet" />
    </SettingsRow>
    <SettingsRow
      title="Collectibles"
      description="Hidden items to find, where the game has them"
    >
      {/* TODO(v3-data): a Collectibles tracking flag on `gameplay.mainline_play_settings` (only `include_collectibles_in_completion` exists). */}
      <PendingData variant="inline" label="On/off not in Voydex yet" />
    </SettingsRow>
  </DetailSectionCard>
);
