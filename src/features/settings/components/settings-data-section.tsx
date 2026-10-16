import { SettingsRow } from "@/shared/components/settings-row";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PendingData } from "@/shared/components/pending-data";
import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";

/*
 * v3's Your data, without the download: Voydex keeps no export or import of
 * your data for now (a Plan's share link is the one import). What stays is
 * deleting the account.
 */
export const SettingsDataSection = () => (
  <DetailSectionCard title="Your data">
    <SettingsRow
      title="Delete your account"
      description="Removes your account and everything in it. This can't be undone."
    >
      {/* TODO(v3-data): a reviewed, server-owned account deletion operation (auth user and every owned row). */}
      <PendingData
        variant="inline"
        className={`${SETTINGS_ACTION_CLASS_NAME} h-11 justify-center rounded-lg`}
      />
    </SettingsRow>
  </DetailSectionCard>
);
