import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PublicAppShell } from "@/shared/components/app-shell/public-app-shell";
import { buttonVariants } from "@/shared/components/ui/button";
import Link from "next/link";

export const PublicNotFoundPage = () => {
  return (
    <PublicAppShell>
      <section className="flex flex-1 items-center justify-center py-12 text-center">
        <div className="w-full max-w-xl">
          <h1 className="mt-3 text-3xl leading-tight font-bold tracking-normal sm:text-4xl">
            Page not found
          </h1>
          <div className="mt-8 flex flex-col justify-center gap-3 sm:flex-row">
            <Link
              href={appRoutes.appEntry}
              className={buttonVariants({ size: "lg" })}
            >
              <AppIcon
                icon={appIcons.actions.enterApp}
                inline="start"
                aria-hidden
              />
              Enter the app
            </Link>
            <Link
              href={appRoutes.home}
              className={buttonVariants({ variant: "outline", size: "lg" })}
            >
              <AppIcon
                icon={appIcons.actions.home}
                inline="start"
                aria-hidden
              />
              Home
            </Link>
          </div>
        </div>
      </section>
    </PublicAppShell>
  );
};
