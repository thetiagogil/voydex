import { PageHeader } from "@/components/app/page-header";
import { ThemeSettingsCard } from "@/features/settings/components/theme-settings-card";

export default function SettingsPage() {
  return (
    <>
      <PageHeader
        title="Settings"
        description="Manage your Voydex preferences. More settings will be added as the app grows."
      />
      <ThemeSettingsCard />
    </>
  );
}
