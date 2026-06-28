"use client";

import Link from "next/link";
import { useActionState } from "react";

import { appRoutes } from "@/config/routes";
import { initialCreateMainlinePlayState } from "@/modules/mainline/features/play/create/create-mainline-play-action-state";
import { CreateMainlinePlayDetailsCard } from "@/modules/mainline/features/play/create/components/create-mainline-play-details-card";
import { CreateMainlinePlayGameCard } from "@/modules/mainline/features/play/create/components/create-mainline-play-game-card";
import { CreateMainlinePlaySubmitButton } from "@/modules/mainline/features/play/create/components/create-mainline-play-submit-button";
import { createMainlinePlay } from "@/modules/mainline/features/play/create/server/create-play-action";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Alert, AlertDescription } from "@/shared/components/ui/alert";
import { Button } from "@/shared/components/ui/button";

type CreateMainlinePlayFormProps = {
  data: CreateMainlinePlayPageData;
};

export const CreateMainlinePlayForm = ({
  data,
}: CreateMainlinePlayFormProps) => {
  const [state, formAction] = useActionState(
    createMainlinePlay,
    initialCreateMainlinePlayState,
  );

  return (
    <form action={formAction} className="grid gap-6 lg:grid-cols-[0.8fr_1.2fr]">
      {state.formError ? (
        <Alert variant="destructive" className="lg:col-span-2">
          <AlertDescription>{state.formError}</AlertDescription>
        </Alert>
      ) : null}

      <CreateMainlinePlayDetailsCard data={data} state={state} />
      <CreateMainlinePlayGameCard data={data} state={state} />

      <div className="flex flex-col-reverse gap-3 sm:flex-row sm:justify-end lg:col-span-2">
        <Button
          render={<Link href={appRoutes.mainlinePlays} />}
          nativeButton={false}
          variant="outline"
        >
          <AppIcon icon={appIcons.actions.back} inline="start" />
          Back to plays
        </Button>
        <CreateMainlinePlaySubmitButton />
      </div>
    </form>
  );
};
