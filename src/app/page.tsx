import { AuthButton } from "@/components/auth-button";
import { EnvVarWarning } from "@/components/env-var-warning";
import { Hero } from "@/components/hero";
import { hasEnvVars } from "@/lib/utils";

export default function Home() {
  return (
    <main>
      <div>
        <nav>{!hasEnvVars ? <EnvVarWarning /> : <AuthButton />}</nav>

        <div>
          <Hero />
        </div>
      </div>
    </main>
  );
}
