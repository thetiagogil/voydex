"use client";

import { appRoutes } from "@/config/routes";
import { leaveApp } from "@/config/front-door";
import { Logo } from "@/shared/components/brand/logo";
import { Link } from "@/shared/components/link";

/*
 * The V tile and the name in the bar: on every page they lead to the front
 * page. From inside the app that is Leave the app's own way out
 * (`leavesApp`): the front page shows, with Continue, and nothing on the
 * device changes.
 */
export const BrandLink = ({ leavesApp = false }: { leavesApp?: boolean }) => (
  <Link
    href={appRoutes.home}
    aria-label="Voydex home"
    onClick={leavesApp ? leaveApp : undefined}
    className="inline-flex h-11 min-w-11 shrink-0 items-center rounded-sm"
  >
    {/* The name stays on phones: there the strip holds nothing else. */}
    <Logo
      showText
      markClassName="size-9 bg-(--bar-brand) text-action"
      textClassName="text-white"
    />
  </Link>
);
