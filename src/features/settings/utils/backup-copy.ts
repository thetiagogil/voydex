import type { BackupDevice } from "@/platform/local-db/device-account";

const timeFormat = new Intl.DateTimeFormat("en-GB", {
  hour: "2-digit",
  minute: "2-digit",
});

const dateFormat = new Intl.DateTimeFormat("en-GB", {
  day: "numeric",
  month: "long",
});

/* Calendar days between two times, on this device's clock. */
const calendarDaysBetween = (earlier: Date, later: Date) =>
  Math.round(
    (new Date(
      later.getFullYear(),
      later.getMonth(),
      later.getDate(),
    ).getTime() -
      new Date(
        earlier.getFullYear(),
        earlier.getMonth(),
        earlier.getDate(),
      ).getTime()) /
      (24 * 60 * 60 * 1000),
  );

/* "today at 14:02", "yesterday at 09:10" or "on 3 November". */
export const describeBackupTime = (iso: string, now = new Date()) => {
  const savedAt = new Date(iso);
  const days = calendarDaysBetween(savedAt, now);

  if (days === 0) return `today at ${timeFormat.format(savedAt)}`;
  if (days === 1) return `yesterday at ${timeFormat.format(savedAt)}`;

  return `on ${dateFormat.format(savedAt)}`;
};

/* The device that saved a backup: "iPhone", or "Another device". */
export const describeBackupDevice = ({ name }: Pick<BackupDevice, "name">) =>
  name ?? "Another device";
