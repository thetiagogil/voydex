"use client";

import { useEffect, useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  describeLastBackup,
  isBackupDue,
  readBackupStatus,
} from "@/platform/local-db/backups";
import { useLocalDb, useLocalRead } from "@/platform/local-db/local-db-context";
import {
  isAppleMobile,
  isInAppBrowser,
  readLocalStorageStatus,
} from "@/platform/local-db/storage";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { TextLink } from "@/shared/components/text-link";

type BrowserRisk = "in-app" | "not-installed" | null;

/*
 * The risk this browser poses to the data: an app's own browser, which may
 * not keep it, or Safari on a phone without Voydex on the Home Screen,
 * which clears it after a week unused.
 */
const readBrowserRisk = async (): Promise<BrowserRisk> => {
  if (isInAppBrowser(navigator.userAgent)) return "in-app";

  if (!isAppleMobile(navigator.userAgent, navigator.maxTouchPoints)) {
    return null;
  }

  return (await readLocalStorageStatus()).installed ? null : "not-installed";
};

const useBrowserRisk = () => {
  const [risk, setRisk] = useState<BrowserRisk>(null);

  useEffect(() => {
    let current = true;

    void readBrowserRisk().then((next) => {
      if (current) setRisk(next);
    });

    return () => {
      current = false;
    };
  }, []);

  return risk;
};

/*
 * One quiet line under Home's moments when your data needs a hand: open
 * Voydex in a real browser, add it to the Home Screen, or save a backup
 * after 30 days without one. Nothing when all is well.
 */
export const HomeDataNote = () => {
  const { db } = useLocalDb();
  const risk = useBrowserRisk();
  const backup = useLocalRead("backup-status", () => readBackupStatus(db));

  const note =
    risk === "in-app"
      ? {
          icon: appIcons.status.warning,
          link: null,
          text: "This app's own browser may not keep your Plays. Open Voydex in Safari or Chrome.",
        }
      : risk === "not-installed"
        ? {
            icon: appIcons.actions.install,
            link: "How to install",
            text: "Safari clears your Plays after a week unused unless Voydex is on your Home Screen.",
          }
        : backup.status === "ready" && isBackupDue(backup.data)
          ? {
              icon: appIcons.status.info,
              link: "Save a backup",
              text: `${describeLastBackup(backup.data.lastBackupAt)}.`,
            }
          : null;

  if (!note) return null;

  return (
    <p className="text-ink-2 text-14 mt-6 flex flex-wrap items-center gap-x-2 gap-y-1 font-semibold">
      <AppIcon icon={note.icon} className="text-ink-3" />
      <span>{note.text}</span>
      {note.link ? (
        <TextLink href={`${appRoutes.settings}#your-data`}>
          {note.link}
        </TextLink>
      ) : null}
    </p>
  );
};
