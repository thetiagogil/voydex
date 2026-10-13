import { SettingsAccountSection } from "@/features/settings/components/settings-account-section";
import { SettingsTrainerCard } from "@/features/settings/components/settings-trainer-card";
import { PageHeader } from "@/shared/components/page-header";

type SettingsPageProps = {
  /*
   * The route's email, or a placeholder ("Account") when the claims had none.
   * Anything that isn't an email reaches the trainer card's empty state.
   */
  userEmail: string | null;
};

/* v3's Account settings: one column, the trainer card first, then quiet sections. */
export const SettingsPage = ({ userEmail }: SettingsPageProps) => {
  return (
    <div className="mx-auto flex w-full max-w-189 flex-col">
      <PageHeader
        title="Settings"
        description="Your trainer card and your account"
      />
      <div className="mt-7 flex flex-col gap-6">
        <SettingsTrainerCard
          email={userEmail?.includes("@") ? userEmail : null}
        />
        <SettingsAccountSection />
      </div>
    </div>
  );
};
