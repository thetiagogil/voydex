import { SettingsAccountSection } from "@/features/settings/components/settings-account-section";
import { PageBand } from "@/shared/components/page-band";
import { SettingsDataSection } from "@/features/settings/components/settings-data-section";
import { SettingsPreferencesSections } from "@/features/settings/components/settings-preferences-sections";
import { SettingsProfileSection } from "@/features/settings/components/settings-profile-section";
import { PageHeader } from "@/shared/components/page-header";

type SettingsPageProps = {
  displayName: string | null;
  /* Null when the claims carry no email. */
  email: string | null;
  /* The route's log out action, shared with the app shell's account menu. */
  signOutAction: () => Promise<void>;
  /* "November 2024"; null when it couldn't be read. */
  trainerSince: string | null;
};

/*
 * v3's Account settings: one column, the trainer card on the band (it is the
 * profile form), then quiet sections: Look and feel, New Play defaults,
 * Account and Your data.
 */
export const SettingsPage = ({
  displayName,
  email,
  signOutAction,
  trainerSince,
}: SettingsPageProps) => (
  <div className="mx-auto flex w-full max-w-189 flex-col">
    <PageBand className="max-w-[calc(47.25rem+2*var(--page-gutter))]">
      <PageHeader
        title="Settings"
        description="How Voydex looks and behaves for you"
      />
      <div className="mt-5">
        <SettingsProfileSection
          displayName={displayName}
          email={email}
          trainerSince={trainerSince}
        />
      </div>
    </PageBand>
    <div className="mt-6 flex flex-col gap-6">
      <SettingsPreferencesSections />
      <SettingsAccountSection email={email} signOutAction={signOutAction} />
      <SettingsDataSection />
    </div>
  </div>
);
