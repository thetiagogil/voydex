import { LoginForm } from "@/components/forms/login-form";
import { PageLayout } from "@/components/layout/page-layout";

export default function Page() {
  return (
    <PageLayout width="sm">
      <LoginForm />
    </PageLayout>
  );
}
