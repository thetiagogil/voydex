import { appRoutes } from "@/config/routes";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";

import { WelcomeRoute } from "./welcome-route";

type WelcomeRouteProps = {
  searchParams?: Promise<{ next?: string }>;
};

export default async function Page({ searchParams }: WelcomeRouteProps) {
  const params = await searchParams;
  const next = getSafeAuthRedirectPath(params?.next, appRoutes.mainline);

  return (
    <WelcomeRoute
      destination={
        next.startsWith(appRoutes.welcome) ? appRoutes.mainline : next
      }
    />
  );
}
