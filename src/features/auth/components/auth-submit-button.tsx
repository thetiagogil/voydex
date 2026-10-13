"use client";

import type { ReactNode } from "react";
import { useFormStatus } from "react-dom";

import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type AuthSubmitButtonProps = {
  className?: string;
  /* An icon before the label, such as the mail on "Send the link". */
  icon?: ReactNode;
  label: string;
  pendingLabel: string;
  size?: "default" | "lg" | "sm";
  variant?: "default" | "outline";
};

/* A sign-in form's button: it says what it's doing while the form sends. */
export const AuthSubmitButton = ({
  className,
  icon,
  label,
  pendingLabel,
  size = "lg",
  variant = "default",
}: AuthSubmitButtonProps) => {
  const { pending } = useFormStatus();

  return (
    <Button
      type="submit"
      size={size}
      variant={variant}
      className={cn(variant === "default" && "mt-2 w-full", className)}
      disabled={pending}
      aria-busy={pending}
    >
      {pending ? <Spinner data-icon="inline-start" /> : icon}
      {pending ? pendingLabel : label}
    </Button>
  );
};
