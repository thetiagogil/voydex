import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  DexDevice,
  DexScreenFrame,
} from "@/shared/components/brand/dex-device";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type AuthFrameProps = {
  /*
   * The way out, in the device's top row: back to the page that sent you
   * here (Log in), or home when left out.
   */
  back?: { href: string; label: string };
  children: ReactNode;
  /* One quiet line under the screen, such as what an account is for. */
  note?: ReactNode;
};

/*
 * The sign-in family's page: the Dex, as the front page and the start
 * screen draw it, filling the window, with the form on its screen. Log in,
 * Sign up, Reset your password, Choose a new password and Check your email
 * all stand in it.
 */
export const AuthFrame = ({
  back = { href: appRoutes.home, label: "Go back home" },
  children,
  note,
}: AuthFrameProps) => (
  <DexDevice
    className="min-h-svh"
    top={
      <Link
        href={back.href}
        className={buttonVariants({ size: "sm", variant: "inverse" })}
      >
        <AppIcon icon={appIcons.actions.back} inline="start" />
        {back.label}
      </Link>
    }
  >
    <div className="flex flex-1 flex-col items-center justify-center pt-4 pb-10 sm:pt-6 sm:pb-16">
      <DexScreenFrame
        className="max-w-120"
        screenClassName="text-15 px-5 pt-5.5 pb-6 sm:px-7 sm:pt-6.5 sm:pb-7"
      >
        {children}
      </DexScreenFrame>
      {note ? (
        <p className="text-14 mt-4.5 text-center font-semibold">{note}</p>
      ) : null}
    </div>
  </DexDevice>
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
