import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function PreferencesSettingsPage() {
  return (
    <>
      <PageHeader
        title="Preferences"
        description="Set global reuse warning and filtering behavior."
      />
      <EmptyState
        title="Preferences placeholder"
        description="Play-specific completion settings will stay on the play, not here."
      />
    </>
  );
}
