import { openLocalDb } from "@/platform/local-db/open-local-db";

/*
 * Mainline's tabs, read again once the device's data changed under a step
 * in front of the app (the account coming in, the trainer step saved), so
 * the step gives way to a finished Home (the code loads only when needed).
 */
export const prepareMainlineTabs = async () => {
  const [{ db }, { prepareMainlineTabs: prepare }] = await Promise.all([
    openLocalDb(),
    import("@/modules/mainline/public-page-reads"),
  ]);

  await prepare(db);
};
