import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/shared/utils/cn";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlinePlayTopActionsProps = {
  data: MainlinePlayShellData;
};

export const MainlinePlayTopActions = ({
  data,
}: MainlinePlayTopActionsProps) => {
  return (
    <div className="flex flex-wrap items-start gap-2 lg:justify-end">
      {data.play.game_slug ? (
        <Link
          href={appRoutes.codexGame(data.play.game_slug)}
          className={cn(
            buttonVariants({ variant: "default", size: "lg" }),
            "w-full justify-center sm:w-auto",
          )}
        >
          <AppIcon
            icon={appIcons.product.reference}
            inline="start"
            aria-hidden
          />
          View game
        </Link>
      ) : null}

      <Link
        href={appRoutes.mainlinePlays}
        className={cn(
          buttonVariants({ variant: "outline", size: "default" }),
          "w-full justify-center sm:w-auto",
        )}
      >
        <AppIcon icon={appIcons.actions.back} inline="start" aria-hidden />
        Back to plays
      </Link>
    </div>
  );
};
