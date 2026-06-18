import { CompassIcon, HomeIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { buttonVariants } from "@/shared/components/ui/button";
import { surfaceClassNames } from "@/shared/components/ui/surface";

export default function NotFound() {
  return (
    <main className="flex min-h-screen items-center justify-center px-4 py-12">
      <section
        className={cn(
          surfaceClassNames.glass,
          "w-full max-w-xl rounded-2xl px-6 py-8 text-center sm:px-10 sm:py-10",
        )}
      >
        <p className="text-primary text-sm font-bold tracking-[0.18em] uppercase">
          404
        </p>
        <h1 className="mt-3 text-3xl font-black tracking-tight sm:text-4xl">
          Page not found
        </h1>
        <p className="text-muted-foreground mx-auto mt-3 max-w-md text-sm leading-6 sm:text-base">
          This route is not part of the current Voydex app.
        </p>
        <div className="mt-7 flex flex-col justify-center gap-3 sm:flex-row">
          <Link
            href={appRoutes.appEntry}
            className={cn(buttonVariants({ size: "lg" }), "font-bold")}
          >
            <CompassIcon className="size-5" aria-hidden />
            Enter the app
          </Link>
          <Link
            href={appRoutes.home}
            className={cn(
              buttonVariants({ variant: "outline", size: "lg" }),
              surfaceClassNames.control,
              "font-bold",
            )}
          >
            <HomeIcon className="size-5" aria-hidden />
            Home
          </Link>
        </div>
      </section>
    </main>
  );
}
