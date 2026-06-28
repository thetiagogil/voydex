"use client";

import { useFormStatus } from "react-dom";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

export const CreateMainlinePlaySubmitButton = () => {
  const { pending } = useFormStatus();

  return (
    <Button type="submit" disabled={pending}>
      {pending ? (
        <Spinner data-icon="inline-start" />
      ) : (
        <AppIcon icon={appIcons.actions.create} inline="start" />
      )}
      {pending ? "Creating..." : "Create play"}
    </Button>
  );
};
