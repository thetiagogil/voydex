import { Button } from "@/components/ui/button";
import { createClient } from "@/lib/supabase/server";
import Link from "next/link";
import { LogoutButton } from "./logout-button";

export async function AuthButton() {
  const supabase = await createClient();
  const { data } = await supabase.auth.getClaims();
  const user = data?.claims;

  return user ? (
    <div>
      <LogoutButton />
    </div>
  ) : (
    <div>
      <Button asChild size="sm" variant="outline">
        <Link href="/auth/login">Sign in</Link>
      </Button>

      <Button asChild size="sm" variant="default">
        <Link href="/auth/sign-up">Sign up</Link>
      </Button>
    </div>
  );
}
