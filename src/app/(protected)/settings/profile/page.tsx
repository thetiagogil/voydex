import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function ProfileSettingsPage() {
  return (
    <>
      <PageHeader title="Profile" description="Manage your Voydex profile." />
      <EmptyState
        title="Profile settings placeholder"
        description="Profile data will be stored in the public schema and scoped to the signed-in user."
      />
    </>
  );
}
