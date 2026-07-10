"use client";

import Link from "next/link";
import { useState } from "react";
import {
  ACTIVE_MODULE_COOKIE_NAME,
  DEFAULT_MODULE_KEY,
  isModuleKey,
  modules,
} from "@/config/modules";
import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type HomeAppEntryButtonProps = {
  isAuthenticated: boolean;
};

const getCookieValue = (name: string) => {
  const cookie = document.cookie
    .split("; ")
    .find((item) => item.startsWith(`${name}=`));
  if (!cookie) {
    return "";
  }
  try {
    return decodeURIComponent(cookie.split("=").slice(1).join("="));
  } catch {
    return "";
  }
};

const getActiveModuleHref = () => {
  const cookieValue = getCookieValue(ACTIVE_MODULE_COOKIE_NAME);
  const moduleKey = isModuleKey(cookieValue) ? cookieValue : DEFAULT_MODULE_KEY;
  return modules[moduleKey].defaultHref;
};

export const HomeAppEntryButton = ({
  isAuthenticated,
}: HomeAppEntryButtonProps) => {
  const [isPending, setIsPending] = useState(false);
  if (!isAuthenticated) {
    return (
      <Button
        render={<Link href={appRoutes.login} />}
        nativeButton={false}
        size="lg"
        className="min-w-0 sm:min-w-40"
      >
        <AppIcon icon={appIcons.actions.enterApp} inline="start" aria-hidden />
        Enter the app
      </Button>
    );
  }
  return (
    <Button
      type="button"
      size="lg"
      className="min-w-0 sm:min-w-40"
      disabled={isPending}
      aria-busy={isPending}
      onClick={() => {
        setIsPending(true);
        window.location.assign(getActiveModuleHref());
      }}
    >
      {isPending ? (
        <Spinner data-icon="inline-start" />
      ) : (
        <AppIcon icon={appIcons.actions.enterApp} inline="start" aria-hidden />
      )}
      {isPending ? "Entering..." : "Enter the app"}
    </Button>
  );
};
