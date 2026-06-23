"use client";
import { useFormStatus } from "react-dom";
import type { AuthMode } from "@/shared/auth/components/auth-panel";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
type AuthSubmitButtonProps = {
  mode: AuthMode;
};
export const AuthSubmitButton = ({ mode }: AuthSubmitButtonProps) => {
  const { pending } = useFormStatus();
  const isSignUp = mode === "sign-up";
  const label = isSignUp ? "Sign up" : "Log in";
  const pendingLabel = isSignUp ? "Creating account..." : "Logging in...";
  return (
    <Button
      type="submit"
      className="h-11 text-base"
      disabled={pending}
      aria-busy={pending}
    >
      {pending ? <Spinner data-icon="inline-start" /> : null}
      {pending ? pendingLabel : label}
    </Button>
  );
};
