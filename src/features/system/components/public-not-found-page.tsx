import { CompassIcon, HomeIcon } from "lucide-react";
import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/shared/components/app-shell/app-navbar";
import { buttonVariants } from "@/shared/components/ui/button";

export const PublicNotFoundPage = () => {
  return (
    <main className="text-foreground min-h-screen">
      <AppNavbar showLogoText />

      <section className="mx-auto flex min-h-[calc(100svh-4rem-1px)] w-full max-w-7xl items-center justify-center px-4 py-12 text-center sm:px-6 lg:px-8">
        <div className="w-full max-w-xl">
          <p className="text-primary text-sm font-semibold">404</p>
          <h1 className="mt-3 text-3xl leading-tight font-bold tracking-normal sm:text-4xl">
            Page not found
          </h1>
          <p className="text-muted-foreground mx-auto mt-3 max-w-md text-sm leading-6 sm:text-base">
            This route is not part of the current Voydex app.
          </p>
          <div className="mt-8 flex flex-col justify-center gap-3 sm:flex-row">
            <Link
              href={appRoutes.appEntry}
              className={buttonVariants({ size: "lg" })}
            >
              <CompassIcon data-icon="inline-start" aria-hidden />
              Enter the app
            </Link>
            <Link
              href={appRoutes.home}
              className={buttonVariants({ variant: "outline", size: "lg" })}
            >
              <HomeIcon data-icon="inline-start" aria-hidden />
              Home
            </Link>
          </div>
        </div>
      </section>
    </main>
  );
};
