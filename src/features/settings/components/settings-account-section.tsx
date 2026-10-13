import {
  ChangeEmailDialog,
  ChangePasswordDialog,
} from "@/features/settings/components/account-change-dialogs";
import { SettingsLogOutButton } from "@/features/settings/components/settings-log-out-button";
import { SettingsRow } from "@/shared/components/settings-row";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type SettingsAccountSectionProps = {
  /* Null when your email couldn't be read right now. */
  email: string | null;
  signOutAction: () => Promise<void>;
};

/* v3's Account section: your email, your password, and Log out on this device. */
export const SettingsAccountSection = ({
  email,
  signOutAction,
}: SettingsAccountSectionProps) => (
  <DetailSectionCard title="Account">
    <SettingsRow
      title="Email"
      description={email ?? "Couldn't load it right now"}
    >
      <ChangeEmailDialog />
    </SettingsRow>
    <SettingsRow title="Password" description="The one you log in with">
      <ChangePasswordDialog />
    </SettingsRow>
    <SettingsRow title="Log out" description="On this device">
      <form action={signOutAction}>
        <SettingsLogOutButton />
      </form>
    </SettingsRow>
  </DetailSectionCard>
);
