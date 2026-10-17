import { describe, expect, it } from "vitest";

import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";

describe("getPlayStatusTone", () => {
  it("gives each Play status one meaning colour", () => {
    expect(getPlayStatusTone("playing")).toBe("ok");
    expect(getPlayStatusTone("paused")).toBe("warn");
    expect(getPlayStatusTone("completed")).toBe("calm");
    expect(getPlayStatusTone("abandoned")).toBe("danger");
    expect(getPlayStatusTone("not_started")).toBe("neutral");
    expect(getPlayStatusTone(null)).toBe("neutral");
  });
});
