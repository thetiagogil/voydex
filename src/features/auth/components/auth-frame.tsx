import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Link } from "@/shared/components/link";
import { PageBand } from "@/shared/components/page-band";
import { buttonVariants } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

type AuthFrameProps = {
  /*
   * A second way on, under the form in the same card after an "or": Log in
   * offers the app without an account.
   */
  alternative?: ReactNode;
  /*
   * The way out, at the top right of the band, level with the title: back
   * to the page that sent you here (Log in), or home when left out.
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
 * with the page's title at its left and the way back at its top right,
 * then the form on one quiet card, centred. Log in, Reset your password and Choose a new password all
 * stand in it.
 */
export const AuthFrame = ({
  alternative,
  back = { href: appRoutes.home, label: "Back home" },
  children,
  lede,
  note,
  title,
}: AuthFrameProps) => (
  <div className="flex min-w-0 flex-1 flex-col">
    <PageBand className="flex items-start justify-between gap-4 pt-4 sm:gap-6 sm:pt-6">
      <div className="min-w-0 flex-1">
        <h1 className="title-page">{title}</h1>
        {lede ? (
          <p className="text-ink-2 copy-body mt-1.5 max-w-3xl wrap-anywhere">
            {lede}
          </p>
        ) : null}
      </div>
      <Link
        href={back.href}
        className={buttonVariants({
          className: "w-fit shrink-0",
          variant: "secondary",
        })}
      >
        <AppIcon icon={appIcons.actions.back} inline="start" />
        {back.label}
      </Link>
    </PageBand>
    <div className="flex w-full justify-center pt-8 pb-4 sm:pt-10 sm:pb-8">
      <div className="w-full max-w-110 min-w-0">
        <Card className="gap-0">
          {children}
          {alternative ? (
            <div className="mt-6 flex flex-col gap-3">
              <p className="text-ink-3 copy-meta before:bg-line after:bg-line flex items-center gap-3 before:h-px before:flex-1 after:h-px after:flex-1">
                or
              </p>
              {alternative}
            </div>
          ) : null}
        </Card>
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
