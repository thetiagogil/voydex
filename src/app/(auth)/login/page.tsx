import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import {
  LoginPage,
  type LoginSearchParams,
} from "@/features/auth/components/login-page";

export default function Page({
  searchParams,
}: {
  searchParams?: Promise<LoginSearchParams>;
}) {
  return (
    <PublicAppShell bar="none">
      <LoginPage searchParams={searchParams} />
    </PublicAppShell>
  );
}
