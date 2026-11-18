import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DexDevice } from "@/shared/components/brand/dex-device";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

type AuthFrameProps = {
  /*
   * The way out, in the Dex's top row: back to the page that sent you here
   * (Log in), or home when left out.
   */
  back?: { href: string; label: string };
  children: ReactNode;
  /* The line under the title. */
  lede?: ReactNode;
  /* One quiet line under the card, such as what you have without an account. */
  note?: ReactNode;
  title: string;
};

/*
 * The sign-in family's page: the same Dex head as the front page, with the
 * page's title on the red, and below it one quiet card with the form. A
 * form is a place to work, so only the head is loud. Log in, Reset your
 * password and Choose a new password all stand in it.
 */
export const AuthFrame = ({
  back = { href: appRoutes.home, label: "Go back home" },
  children,
  lede,
  note,
  title,
}: AuthFrameProps) => (
  <div className="flex min-w-0 flex-1 flex-col">
    <DexDevice
      ariaLabelledBy="auth-title"
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
    >
      <div className="mx-auto w-full max-w-110 pt-10 pb-9 sm:pt-14 sm:pb-12">
        <h1 id="auth-title" className="title-page">
          {title}
        </h1>
        {lede ? (
          <p className="mt-1.5 font-semibold wrap-anywhere">{lede}</p>
        ) : null}
      </div>
    </DexDevice>
    <div className="flex w-full justify-center pt-6 pb-4 sm:pt-8 sm:pb-8">
      <div className="w-full max-w-110 min-w-0">
        <Card className="gap-0 p-5 sm:p-7.5">{children}</Card>
        {note ? (
          <p className="text-13 text-ink-2 mt-5.5 text-center font-semibold">
            {note}
          </p>
        ) : null}
      </div>
    </div>
  </div>
);

/* The envelope at the top of a sent email's card (v3 `.au-mail`). */
export const AuthMailMark = () => (
  <span
    aria-hidden
    className="bg-action-soft text-action-lip mb-4 grid size-16 place-items-center rounded-full [&_svg]:size-7.5"
  >
    <AppIcon icon={appIcons.actions.mail} />
  </span>
);
