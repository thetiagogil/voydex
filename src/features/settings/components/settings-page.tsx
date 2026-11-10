import type { PlayTracking } from "@/config/play-tracking";
import type { LookAndFeel } from "@/features/settings/client/preferences-actions";
import type { ProfileIconChoice } from "@/features/settings/types";
import { SettingsAccountSection } from "@/features/settings/components/settings-account-section";
import { PageBand } from "@/shared/components/page-band";
import { SettingsDataSection } from "@/features/settings/components/settings-data-section";
import { SettingsLookSection } from "@/features/settings/components/settings-look-section";
import { SettingsNewPlayDefaultsSection } from "@/features/settings/components/settings-new-play-defaults-section";
import { SettingsProfileSection } from "@/features/settings/components/settings-profile-section";
import { PageHeader } from "@/shared/components/page-header";

type SettingsPageProps = {
  /* The Pokémon you can pick as your icon. */
  choices: readonly ProfileIconChoice[];
  defaultTrainerName: string | null;
  displayName: string | null;
  /* The signed-in account's email; null when you haven't signed in. */
  email: string | null;
  iconFormId: number | null;
  /* Motion, and whether lists keep search and filters open. */
  lookAndFeel: LookAndFeel;
  /* What a new Play starts tracking. */
  newPlayDefaults: PlayTracking;
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
  choices,
  defaultTrainerName,
  displayName,
  email,
  iconFormId,
  lookAndFeel,
  newPlayDefaults,
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
          choices={choices}
          defaultTrainerName={defaultTrainerName}
          displayName={displayName}
          email={email}
          iconFormId={iconFormId}
          trainerSince={trainerSince}
        />
      </div>
    </PageBand>
    <div className="mt-6 flex flex-col gap-6">
      <SettingsLookSection lookAndFeel={lookAndFeel} />
      <SettingsNewPlayDefaultsSection defaults={newPlayDefaults} />
      {/* Signing in is only for backups: the account section shows once you have. */}
      {email ? (
        <SettingsAccountSection email={email} signOutAction={signOutAction} />
      ) : null}
      <SettingsDataSection />
    </div>
  </div>
);
