import { describe, expect, it } from "vitest";

import {
  describeBackupDevice,
  describeBackupTime,
} from "@/features/settings/utils/backup-copy";

describe("backup copy", () => {
  const now = new Date(2026, 10, 22, 18, 30);

  it("says the time for today and yesterday, and the date before that", () => {
    expect(
      describeBackupTime(new Date(2026, 10, 22, 14, 2).toISOString(), now),
    ).toBe("today at 14:02");
    expect(
      describeBackupTime(new Date(2026, 10, 21, 9, 10).toISOString(), now),
    ).toBe("yesterday at 09:10");
    expect(
      describeBackupTime(new Date(2026, 10, 21, 22, 45).toISOString(), now),
    ).toBe("yesterday at 22:45");
    expect(
      describeBackupTime(new Date(2026, 10, 3, 9, 10).toISOString(), now),
    ).toBe("on 3 November");
  });

  it("names the device, or says another one when it isn't known", () => {
    expect(describeBackupDevice({ name: "iPhone" })).toBe("iPhone");
    expect(describeBackupDevice({ name: null })).toBe("Another device");
  });
});
