import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Link } from "@/shared/components/link";
import { PageBand } from "@/shared/components/page-band";
import { buttonVariants } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

type AuthFrameProps = {
  /*
   * The way out, at the end of the title's row: back to the page that sent
   * you here (Log in), or home when left out.
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
 * The sign-in family's page, built as every page of the app is: the band
 * with the page's title at its left and the way back at the end of the row,
 * then the form on one quiet card, centred. Outside the app the band is the
 * action red. Log in, Reset your password and Choose a new password all
 * stand in it.
 */
export const AuthFrame = ({
  back = { href: appRoutes.home, label: "Go back home" },
  children,
  lede,
  note,
  title,
}: AuthFrameProps) => (
  <div className="flex min-w-0 flex-1 flex-col">
    <PageBand
      tone="action"
      className="flex flex-col gap-x-6 gap-y-4 pt-4 sm:flex-row sm:items-end sm:justify-between sm:pt-6"
    >
      <div className="min-w-0">
        <h1 className="title-page">{title}</h1>
        {lede ? (
          <p className="copy-body mt-1.5 max-w-3xl wrap-anywhere">{lede}</p>
        ) : null}
      </div>
      <Link
        href={back.href}
        className={buttonVariants({
          className: "w-fit shrink-0",
          size: "sm",
          variant: "inverse",
        })}
      >
        <AppIcon icon={appIcons.actions.back} inline="start" />
        {back.label}
      </Link>
    </PageBand>
    <div className="flex w-full justify-center pt-8 pb-4 sm:pt-10 sm:pb-8">
      <div className="w-full max-w-110 min-w-0">
        <Card className="gap-0 p-5 sm:p-7.5">{children}</Card>
        {note ? (
          <p className="copy-meta text-ink-2 mt-5.5 text-center">{note}</p>
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
