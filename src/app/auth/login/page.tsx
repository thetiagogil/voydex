import { PageLayout } from "@/components/layout/page-layout";
import { AuthCard } from "@/features/auth/components/auth-card";

export default function Page() {
  return (
    <PageLayout isAuthPage>
      <AuthCard mode="login" />
    </PageLayout>
  );
}
