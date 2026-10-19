import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import {
  ForgotPasswordPage,
  type ForgotPasswordSearchParams,
} from "@/features/auth/components/forgot-password-page";
import { publicArt } from "@/modules/reference/public-art";

export default function Page({
  searchParams,
}: {
  searchParams?: Promise<ForgotPasswordSearchParams>;
}) {
  return (
    <PublicAppShell bar="none">
      <ForgotPasswordPage art={publicArt} searchParams={searchParams} />
    </PublicAppShell>
  );
}
