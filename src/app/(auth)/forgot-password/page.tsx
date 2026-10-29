import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import {
  ForgotPasswordPage,
  type ForgotPasswordSearchParams,
} from "@/features/auth/components/forgot-password-page";

export default function Page({
  searchParams,
}: {
  searchParams?: Promise<ForgotPasswordSearchParams>;
}) {
  return (
    <PublicAppShell bar="none">
      <ForgotPasswordPage searchParams={searchParams} />
    </PublicAppShell>
  );
}
