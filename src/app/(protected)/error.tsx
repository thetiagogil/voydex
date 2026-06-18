"use client";

import { AlertTriangleIcon, RotateCcwIcon } from "lucide-react";

import { PageHeader } from "@/components/app/page-header";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";

type ProtectedErrorProps = {
  error: Error & { digest?: string };
  reset: () => void;
};

export default function ProtectedError({ error, reset }: ProtectedErrorProps) {
  return (
    <>
      <PageHeader
        title="Something went wrong"
        description="Voydex could not load this workspace. Try again, or return to another section of the app."
      />
      <Card>
        <CardContent className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div className="flex min-w-0 items-start gap-3">
            <AlertTriangleIcon
              className="text-destructive mt-0.5 size-5 shrink-0"
              aria-hidden
            />
            <p className="text-muted-foreground text-sm leading-6">
              The current page failed to render.
              {error.digest ? ` Error reference: ${error.digest}` : null}
            </p>
          </div>
          <Button type="button" onClick={reset}>
            <RotateCcwIcon className="size-4" aria-hidden />
            Try again
          </Button>
        </CardContent>
      </Card>
    </>
  );
}
