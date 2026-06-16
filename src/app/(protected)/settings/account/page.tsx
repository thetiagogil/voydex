import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function AccountSettingsPage() {
  return (
    <>
      <PageHeader
        title="Account"
        description="Manage account and auth settings."
      />
      <EmptyState
        title="Account settings placeholder"
        description="Account actions will be backed by Supabase Auth."
      />
    </>
  );
}
