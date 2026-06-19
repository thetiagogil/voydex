import { CompassIcon, HomeIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

export default function NotFound() {
  return (
    <main className="flex min-h-screen items-center justify-center px-4 py-12">
      <Card className="w-full max-w-xl text-center">
        <CardHeader>
          <p className="text-primary text-sm font-bold tracking-[0.18em] uppercase">
            404
          </p>
          <CardTitle className="text-3xl font-black tracking-tight sm:text-4xl">
            Page not found
          </CardTitle>
          <CardDescription className="mx-auto max-w-md text-sm leading-6 sm:text-base">
            This route is not part of the current Voydex app.
          </CardDescription>
        </CardHeader>
        <CardContent className="flex flex-col justify-center gap-3 sm:flex-row">
          <Link
            href={appRoutes.appEntry}
            className={cn(buttonVariants({ size: "lg" }), "font-bold")}
          >
            <CompassIcon data-icon="inline-start" aria-hidden />
            Enter the app
          </Link>
          <Link
            href={appRoutes.home}
            className={cn(
              buttonVariants({ variant: "outline", size: "lg" }),
              "font-bold",
            )}
          >
            <HomeIcon data-icon="inline-start" aria-hidden />
            Home
          </Link>
        </CardContent>
      </Card>
    </main>
  );
}
