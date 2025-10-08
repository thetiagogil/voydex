import { AuthButton } from "@/components/auth-button";
import { EnvVarWarning } from "@/components/env-var-warning";
import { hasEnvVars } from "@/lib/utils";

export default function ProtectedLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <main>
      <div>
        <nav>{!hasEnvVars ? <EnvVarWarning /> : <AuthButton />}</nav>
        <div>{children}</div>
      </div>
    </main>
  );
}
