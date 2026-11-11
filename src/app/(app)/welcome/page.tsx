"use client";

import { useSearchParams } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";

import { WelcomeRoute } from "./welcome-route";

export default function Page() {
  const next = getSafeAuthRedirectPath(
    useSearchParams().get("next"),
    appRoutes.mainline,
  );

  return (
    <WelcomeRoute
      destination={
        next.startsWith(appRoutes.welcome) ? appRoutes.mainline : next
      }
    />
  );
}
