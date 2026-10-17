import { SettingsRow } from "@/shared/components/settings-row";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PendingData } from "@/shared/components/pending-data";

/*
 * Look and feel and New Play defaults (v3 `.set-sec`): each row says what it
 * will control, and a marker stands where its control goes.
 */
export const SettingsPreferencesSections = () => (
  <>
    <DetailSectionCard title="Look and feel">
      {/* TODO(v3-data): mode, colour theme and motion preferences (no columns on public.user_preferences; only the light look is designed). */}
      <SettingsRow title="Mode" description="System follows your device">
        <PendingData variant="inline" />
      </SettingsRow>
      <SettingsRow
        title="Colour theme"
        description="The ground and button colours. Each Play still wears its game's colour."
      >
        <PendingData variant="inline" />
      </SettingsRow>
      <SettingsRow title="Motion" description="Stamps, pops and little lifts">
        <PendingData variant="inline" />
      </SettingsRow>
    </DetailSectionCard>

    <DetailSectionCard
      title="New Play defaults"
      aside="What a new Play starts with. Each Play can change it."
    >
      {/* TODO(v3-data): New Play defaults for Pokédex mode, Story and collectibles tracking (no columns on public.user_preferences). */}
      <SettingsRow
        title="Track Story"
        description="Badges, league and the milestones in between"
      >
        <PendingData variant="inline" />
      </SettingsRow>
      <SettingsRow
        title="Track Pokédex"
        description="Mark what you catch, or what you catch and what you've seen"
      >
        <PendingData variant="inline" />
      </SettingsRow>
      <SettingsRow
        title="Track collectibles"
        description="When a game has them"
      >
        <PendingData variant="inline" />
      </SettingsRow>
    </DetailSectionCard>
  </>
);
