"use client";

import type { ReactNode } from "react";
import { useFormStatus } from "react-dom";

import { NeedsInternet } from "@/shared/components/needs-internet";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type AuthSubmitButtonProps = {
  className?: string;
  /* An icon before the label, such as the mail on "Send the link". */
  icon?: ReactNode;
  label: string;
  pendingLabel: string;
  /* `lg` (as tall as the fields) under a form's fields, the default. */
  size?: "default" | "lg";
  variant?: "default" | "secondary";
};

/*
 * A sign-in form's button: it says what it's doing while the form sends.
 * Every one of them talks to the account, so offline it is switched off
 * and says why.
 */
export const AuthSubmitButton = ({
  className,
  icon,
  label,
  pendingLabel,
  size = "lg",
  variant = "default",
}: AuthSubmitButtonProps) => {
  const { pending } = useFormStatus();
  const wide = variant === "default";

  return (
    <NeedsInternet className={cn(wide && "mt-2 w-full")}>
      {(offline) => (
        <Button
          type="submit"
          size={size}
          variant={variant}
          className={cn(
            wide && !offline && "mt-2",
            wide && "w-full",
            className,
          )}
          disabled={pending || offline}
          aria-busy={pending}
        >
          {pending ? <Spinner data-icon="inline-start" /> : icon}
          {pending ? pendingLabel : label}
        </Button>
      )}
    </NeedsInternet>
  );
};
