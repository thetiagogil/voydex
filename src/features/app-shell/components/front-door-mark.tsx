"use client";

import { useEffect } from "react";

import {
  rememberAppEntered,
  rememberHasPlays,
  rememberSignedIn,
} from "@/config/front-door";
import { readHasPlays } from "@/features/app-shell/client/has-plays-reader";
import { useAuthSession } from "@/platform/local-db/account-session";
import { localUserId } from "@/platform/local-db/device-schema";
import { subscribeLocalSaves } from "@/platform/local-db/local-db-context";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";

/*
 * What the front page needs to know about this device, noted while the app
 * is open: that it has opened the app (the front page stops showing),
 * whether it holds a Play, read again after every save, and whether this
 * browser is logged in.
 */
export const FrontDoorMark = () => {
  const session = useAuthSession();

  useEffect(rememberAppEntered, []);

  useEffect(() => {
    /* Undefined while the browser's session is still being read. */
    if (session !== undefined) rememberSignedIn(Boolean(session));
  }, [session]);

  useEffect(() => {
    let current = true;
    const read = () => {
      getLocalQueryClient()
        .then((client) => readHasPlays(client, localUserId))
        .then(
          (hasPlays) => {
            if (current && hasPlays !== null) rememberHasPlays(hasPlays);
          },
          () => undefined,
        );
    };

    read();

    const stop = subscribeLocalSaves(read);

    return () => {
      current = false;
      stop();
    };
  }, []);

  return null;
};
