import { AuthForm } from "@/components/forms/auth-form";
import { PageLayout } from "@/components/layout/page-layout";

export default function Page() {
  return (
    <PageLayout>
      <AuthForm mode="signup" />
    </PageLayout>
  );
}
