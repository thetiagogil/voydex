import { PageHeader } from "@/shared/components/page-header";
import { ThemeSettingsCard } from "@/features/settings/components/theme-settings-card";

export default function SettingsPage() {
  return (
    <div className="flex w-full max-w-3xl flex-col gap-6">
      <PageHeader
        title="Settings"
        description="Manage your Voydex preferences. More settings will be added as the app grows."
      />
      <ThemeSettingsCard />
    </div>
  );
}
