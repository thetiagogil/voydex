import { SettingsAccountSection } from "@/features/settings/components/settings-account-section";
import { SettingsTrainerCard } from "@/features/settings/components/settings-trainer-card";
import { PageHeader } from "@/shared/components/page-header";

type SettingsPageProps = {
  /* The route's log out action, shared with the app shell's account menu. */
  signOutAction: () => Promise<void>;
  /* Null when the claims carry no email; the trainer card shows its empty state. */
  userEmail: string | null;
};

/* v3's Account settings: one column, the trainer card first, then quiet sections. */
export const SettingsPage = ({
  signOutAction,
  userEmail,
}: SettingsPageProps) => {
  return (
    <div className="mx-auto flex w-full max-w-189 flex-col">
      <PageHeader
        title="Settings"
        description="Your trainer card and your account"
      />
      <div className="mt-7 flex flex-col gap-6">
        <SettingsTrainerCard email={userEmail} />
        <SettingsAccountSection signOutAction={signOutAction} />
      </div>
    </div>
  );
};
