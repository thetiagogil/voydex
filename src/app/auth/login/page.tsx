import { AuthCard } from "@/features/auth/components/auth-card";
import { PageLayout } from "@/shared/components/layout/page-layout";

export default function Page() {
  return (
    <PageLayout isAuthPage>
      <AuthCard mode="login" />
    </PageLayout>
  );
}
