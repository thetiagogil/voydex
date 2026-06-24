import { AccountSettingsCard } from "@/features/settings/components/account-settings-card";
import { ThemeSettingsCard } from "@/features/settings/components/theme-settings-card";
import { PageHeader } from "@/shared/components/page-header";

type SettingsPageProps = {
  userEmail: string;
};

export const SettingsPage = ({ userEmail }: SettingsPageProps) => {
  return (
    <div className="mx-auto flex w-full max-w-2xl flex-col gap-6">
      <PageHeader
        title="Settings"
        description="Manage your account and app preferences."
      />
      <div className="flex flex-col gap-4">
        <AccountSettingsCard email={userEmail} />
        <ThemeSettingsCard />
      </div>
    </div>
  );
};
