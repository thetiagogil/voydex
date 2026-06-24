import { ArrowLeftIcon, CompassIcon } from "lucide-react";
import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { PageHeader } from "@/shared/components/app/page-header";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";

export const ProtectedNotFoundPage = () => {
  return (
    <>
      <PageHeader
        title="Page not found"
        description="This app page does not exist, or you do not have access to it."
      />
      <Card>
        <CardContent className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <p className="text-muted-foreground text-sm leading-6">
            Return to your Mainline workspace or go back to the previous list.
          </p>
          <div className="flex flex-col-reverse gap-3 sm:flex-row">
            <Button
              render={<Link href={appRoutes.mainlinePlays} />}
              nativeButton={false}
              variant="outline"
            >
              <ArrowLeftIcon data-icon="inline-start" aria-hidden />
              Plays
            </Button>
            <Button
              render={<Link href={appRoutes.appEntry} />}
              nativeButton={false}
            >
              <CompassIcon data-icon="inline-start" aria-hidden />
              Enter the app
            </Button>
          </div>
        </CardContent>
      </Card>
    </>
  );
};
