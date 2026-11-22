import {
  ChangeEmailDialog,
  ChangePasswordDialog,
} from "@/features/settings/components/account-change-dialogs";
import { SettingsLogOutButton } from "@/features/settings/components/settings-log-out-button";
import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import { appRoutes } from "@/config/routes";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { Link } from "@/shared/components/link";
import { SettingsRow } from "@/shared/components/settings-row";
import { buttonVariants } from "@/shared/components/ui/button";

type SettingsAccountSectionProps = {
  /* The signed-in account's email; null when you haven't signed in. */
  email: string | null;
  signOutAction: () => Promise<void>;
};

/*
 * The Account section. Signed in: your email, your password and Log out
 * (it asks first: your Plays are backed up, then leave this device); the
 * account's backups are under Your data. Signed out: what an account is for
 * and the way to log in, since nothing else in the app asks you to. There
 * is no way to make an account for now, and the row says so.
 */
export const SettingsAccountSection = ({
  email,
  signOutAction,
}: SettingsAccountSectionProps) =>
  email ? (
    <SignedInAccount email={email} signOutAction={signOutAction} />
  ) : (
    <DetailSectionCard title="Account">
      <SettingsRow
        title="Have an account?"
        description="Log in to back up your Plays online and bring them to your other devices. The Plays on this device stay apart from your account's and come back when you log out. Voydex isn't making new accounts for now."
      >
        <Link
          href={appRoutes.loginFrom(appRoutes.settings)}
          className={buttonVariants({
            className: SETTINGS_ACTION_CLASS_NAME,
            variant: "secondary",
          })}
        >
          Log in
        </Link>
      </SettingsRow>
    </DetailSectionCard>
  );

const SignedInAccount = ({
  email,
  signOutAction,
}: {
  email: string;
  signOutAction: () => Promise<void>;
}) => (
  <DetailSectionCard title="Account">
    <SettingsRow title="Email" description={email}>
      <ChangeEmailDialog />
    </SettingsRow>
    <SettingsRow title="Password" description="The one you log in with">
      <ChangePasswordDialog />
    </SettingsRow>
    <SettingsRow
      title="Log out"
      description="Your Plays are backed up to your account and leave this device"
    >
      <form action={signOutAction}>
        <SettingsLogOutButton className={SETTINGS_ACTION_CLASS_NAME} />
      </form>
    </SettingsRow>
  </DetailSectionCard>
);
