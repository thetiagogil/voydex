"use client";

import { useEffect, useState } from "react";

import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import { useInstallPrompt } from "@/platform/local-db/install-prompt";
import {
  isAppleMobile,
  isInAppBrowser,
  readLocalStorageStatus,
  requestPersistentStorage,
  type LocalStorageStatus,
} from "@/platform/local-db/storage";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SettingsRow } from "@/shared/components/settings-row";
import { Button } from "@/shared/components/ui/button";

type KeepDataState = LocalStorageStatus & {
  appleMobile: boolean;
  inAppBrowser: boolean;
};

const readKeepDataState = async (): Promise<KeepDataState> => ({
  ...(await readLocalStorageStatus()),
  appleMobile: isAppleMobile(navigator.userAgent, navigator.maxTouchPoints),
  inAppBrowser: isInAppBrowser(navigator.userAgent),
});

const describe = (state: KeepDataState) => {
  if (state.inAppBrowser) {
    return {
      description:
        "This app's own browser may not keep Voydex's data. Open Voydex in Safari or Chrome instead.",
      title: "Open Voydex in your browser",
    };
  }

  if (state.installed) {
    return {
      description: "Voydex is on your Home Screen, so its data stays.",
      title: "Installed",
    };
  }

  return {
    description: state.appleMobile
      ? "Safari clears a site's data after a week unused. In Safari, tap Share, then Add to Home Screen, and it stays."
      : state.persisted
        ? "Your browser keeps Voydex's data. Installing puts Voydex beside your other apps."
        : "Your browser may clear Voydex's data when space runs low. Install Voydex and it stays.",
    title: "Install Voydex",
  };
};

/*
 * Whether this browser keeps Voydex's data: installed, kept on request, or
 * at risk (Safari's 7-day clear-out, an app's own browser), with the way
 * to install where there is one.
 */
export const SettingsKeepDataRow = () => {
  const [state, setState] = useState<KeepDataState | null>(null);
  const install = useInstallPrompt();

  useEffect(() => {
    let current = true;

    void readKeepDataState().then((next) => {
      if (current) setState(next);
    });

    return () => {
      current = false;
    };
  }, []);

  if (!state) return null;

  const { description, title } = describe(state);

  return (
    <SettingsRow
      title={
        state.inAppBrowser ? (
          <span className="flex items-center gap-1.5">
            <AppIcon icon={appIcons.status.warning} className="text-warn-ink" />
            {title}
          </span>
        ) : (
          title
        )
      }
      description={description}
    >
      {install && !state.installed && !state.inAppBrowser ? (
        <Button
          type="button"
          variant="secondary"
          className={SETTINGS_ACTION_CLASS_NAME}
          onClick={() =>
            void install().then(async (installed) => {
              if (installed)
                await requestPersistentStorage().catch(() => false);
              setState(await readKeepDataState());
            })
          }
        >
          <AppIcon icon={appIcons.actions.install} inline="start" />
          Install
        </Button>
      ) : null}
    </SettingsRow>
  );
};
