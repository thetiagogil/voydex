"use client";

import { useFormStatus } from "react-dom";

import type { AuthMode } from "@/features/auth/auth-mode";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type AuthSubmitButtonProps = {
  mode: AuthMode;
};

export const AuthSubmitButton = ({ mode }: AuthSubmitButtonProps) => {
  const { pending } = useFormStatus();
  const isSignUp = mode === "sign-up";
  const label = isSignUp ? "Create account" : "Log in";
  const pendingLabel = isSignUp ? "Creating account..." : "Logging in...";

  return (
    <Button
      type="submit"
      size="lg"
      className="mt-2 w-full"
      disabled={pending}
      aria-busy={pending}
    >
      {pending ? <Spinner data-icon="inline-start" /> : null}
      {pending ? pendingLabel : label}
    </Button>
  );
};
