"use client";

import { useFormStatus } from "react-dom";

import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

export const SettingsLogOutButton = () => {
  const { pending } = useFormStatus();

  return (
    <Button
      type="submit"
      variant="destructive"
      disabled={pending}
      aria-busy={pending}
    >
      {pending ? <Spinner data-icon="inline-start" /> : null}
      {pending ? "Logging out..." : "Log out"}
    </Button>
  );
};
