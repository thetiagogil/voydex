import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import {
  CheckEmailPage,
  type CheckEmailSearchParams,
} from "@/features/auth/components/check-email-page";

export default function Page({
  searchParams,
}: {
  searchParams?: Promise<CheckEmailSearchParams>;
}) {
  return (
    <PublicAppShell bar="none">
      <CheckEmailPage searchParams={searchParams} />
    </PublicAppShell>
  );
}
