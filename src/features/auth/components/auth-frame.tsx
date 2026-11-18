import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DexDevice } from "@/shared/components/brand/dex-device";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type AuthFrameProps = {
  /*
   * The way out, in the Dex's top row: back to the page that sent you here
   * (Log in), or home when left out.
   */
  back?: { href: string; label: string };
  children: ReactNode;
  /* One quiet line under the card, such as what you have without an account. */
  note?: ReactNode;
};

/*
 * The sign-in family's page: the Dex's top, as the front page draws it, and
 * under it one quiet card with the form, set a little into the red so the
 * two belong together. A form is a place to work, so only the top is loud.
 * Log in, Reset your password and Choose a new password all stand in it.
 */
export const AuthFrame = ({
  back = { href: appRoutes.home, label: "Go back home" },
  children,
  note,
}: AuthFrameProps) => (
  <div className="flex min-w-0 flex-1 flex-col">
    <DexDevice
      className="pb-18 sm:pb-22"
      homeHref={appRoutes.home}
      top={
        <Link
          href={back.href}
          className={buttonVariants({ size: "sm", variant: "inverse" })}
        >
          <AppIcon icon={appIcons.actions.back} inline="start" />
          {back.label}
        </Link>
      }
    />
    <div className="relative z-1 -mt-14 flex w-full justify-center pb-4 sm:-mt-18 sm:pb-8">
      <div className="w-full max-w-110 min-w-0">
        <Card className="gap-0 px-5 pt-5.5 pb-6 sm:px-7.5 sm:pt-7 sm:pb-7.5">
          {children}
        </Card>
        {note ? (
          <p className="text-13 text-ink-2 mt-5.5 text-center font-semibold">
            {note}
          </p>
        ) : null}
      </div>
    </div>
  </div>
);

type AuthHeadingProps = {
  children?: ReactNode;
  className?: string;
  title: ReactNode;
};

/* The card's Fredoka title and the one line under it. */
export const AuthHeading = ({
  children,
  className,
  title,
}: AuthHeadingProps) => (
  <>
    <h1 className={cn("title-page mt-6 mb-1", className)}>{title}</h1>
    {children ? (
      <p className="text-ink-2 mb-5.5 font-semibold wrap-anywhere">
        {children}
      </p>
    ) : null}
  </>
);

/* The envelope over a sent email's heading (v3 `.au-mail`). */
export const AuthMailMark = () => (
  <span
    aria-hidden
    className="bg-action-soft text-action-lip mt-1.5 mb-1 grid size-16 place-items-center rounded-full [&_svg]:size-7.5"
  >
    <AppIcon icon={appIcons.actions.mail} />
  </span>
);
