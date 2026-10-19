import type { ReactNode } from "react";

import {
  AuthPeek,
  type PeekingPokemon,
} from "@/features/auth/components/auth-peek";
import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { TextLink } from "@/shared/components/text-link";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type AuthFrameProps = {
  /*
   * A quiet line under the card, such as "Just looking?"; a way back home
   * when left out, since these pages have no top bar.
   */
  after?: ReactNode;
  cast: readonly PeekingPokemon[];
  children: ReactNode;
};

/*
 * The sign-in family's page (v3 `.au-page`): one quiet card, centred, with
 * first partners peeking over it, and no top bar. Log in, Sign up, Reset
 * your password, Choose a new password and Check your email all stand in it.
 */
export const AuthFrame = ({ after, cast, children }: AuthFrameProps) => (
  <div className="flex w-full min-w-0 flex-1 justify-center pt-25 pb-10 sm:pt-31 sm:pb-14">
    <div className="relative w-full max-w-110 min-w-0">
      <AuthPeek cast={cast} />
      <Card className="relative z-1 gap-0 px-5 pt-5.5 pb-6 sm:px-7.5 sm:pt-7 sm:pb-7.5">
        {children}
      </Card>
      {after ?? (
        <p className="text-13 text-ink-2 mt-5.5 text-center font-semibold">
          <TextLink href={appRoutes.home}>Go back home</TextLink>
        </p>
      )}
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
    <h1
      className={cn(
        "text-28 sm:text-32 mt-6 mb-1 tracking-[-0.015em]",
        className,
      )}
    >
      {title}
    </h1>
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
