"use client";

import { appRoutes } from "@/config/routes";
import { useState } from "react";
import { toast } from "sonner";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

const fallbackFileName = "voydex-data.json";

/* The file name the server chose, from its Content-Disposition header. */
const readFileName = (response: Response) =>
  response.headers
    .get("Content-Disposition")
    ?.match(/filename="([^"]+)"/)?.[1] ?? fallbackFileName;

/*
 * Download your data: asks the server for the file, then hands it to the
 * browser to save. The button says it's preparing while it waits, and a
 * failure is a toast, so the page never leaves Settings.
 */
export const DownloadDataButton = () => {
  const [isPreparing, setIsPreparing] = useState(false);

  const download = async () => {
    setIsPreparing(true);

    try {
      const response = await fetch(appRoutes.settingsExport, {
        cache: "no-store",
      });

      if (!response.ok) {
        throw new Error("export failed");
      }

      const url = URL.createObjectURL(await response.blob());
      const link = document.createElement("a");

      link.href = url;
      link.download = readFileName(response);
      link.click();
      /* Some browsers start the save after this tick; free the file later. */
      window.setTimeout(() => URL.revokeObjectURL(url), 60_000);
      toast.success("Your data is downloading");
    } catch {
      toast.error("Your data couldn't be prepared. Try again in a moment.");
    } finally {
      setIsPreparing(false);
    }
  };

  return (
    <Button
      type="button"
      variant="outline"
      size="sm"
      onClick={download}
      disabled={isPreparing}
      aria-busy={isPreparing}
    >
      {isPreparing ? (
        <Spinner data-icon="inline-start" />
      ) : (
        <AppIcon icon={appIcons.actions.continue} inline="start" />
      )}
      {isPreparing ? "Preparing..." : "Download"}
    </Button>
  );
};
