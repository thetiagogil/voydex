import { DownloadDataButton } from "@/features/settings/components/download-data-button";
import { SettingsRow } from "@/shared/components/settings-row";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PendingData } from "@/shared/components/pending-data";

/* v3's Your data: take everything with you, or delete the account. */
export const SettingsDataSection = () => (
  <DetailSectionCard title="Your data">
    <SettingsRow
      title="Download your data"
      description="Every Play, Pokémon, Plan and note, as a file you keep"
    >
      <DownloadDataButton />
    </SettingsRow>
    <SettingsRow
      title="Delete your account"
      description="Removes your account and everything in it. This can't be undone."
    >
      {/* TODO(v3-data): a reviewed, server-owned account deletion operation (auth user and every owned row). */}
      <PendingData variant="inline" />
    </SettingsRow>
  </DetailSectionCard>
);
