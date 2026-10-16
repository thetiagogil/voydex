"use client";

import { useFormStatus } from "react-dom";

import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

/* Log out on this device: the danger outline, inside its form. */
export const SettingsLogOutButton = ({ className }: { className?: string }) => {
  const { pending } = useFormStatus();

  return (
    <Button
      type="submit"
      variant="destructive"
      className={className}
      disabled={pending}
      aria-busy={pending}
    >
      {pending ? <Spinner data-icon="inline-start" /> : null}
      {pending ? "Logging out..." : "Log out"}
    </Button>
  );
};
