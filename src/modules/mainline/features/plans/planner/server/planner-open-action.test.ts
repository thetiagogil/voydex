import { beforeEach, describe, expect, it, vi } from "vitest";

import { openPlannerAction } from "./planner-open-action";

const getPlannerPageData = vi.fn();

vi.mock(
  "@/modules/mainline/features/plans/planner/server/planner-page-query",
  () => ({
    getPlannerPageData: (input: unknown) => getPlannerPageData(input),
  }),
);

describe("openPlannerAction", () => {
  beforeEach(() => {
    vi.clearAllMocks();
  });

  it("opens a blank Plan on the game asked for", async () => {
    const data = { plan: null };

    getPlannerPageData.mockResolvedValue(data);

    await expect(
      openPlannerAction({ versionGroupSlug: "rb" }),
    ).resolves.toEqual({ data, status: "success" });
    expect(getPlannerPageData).toHaveBeenCalledExactlyOnceWith({
      planId: null,
      versionGroupSlug: "rb",
    });
  });

  it("says so when the Planner can't open", async () => {
    getPlannerPageData.mockResolvedValue(null);

    await expect(
      openPlannerAction({ versionGroupSlug: "rb" }),
    ).resolves.toEqual({
      message: "Unable to open the Team Planner.",
      status: "error",
    });
  });

  it("reads nothing for text that isn't a game slug", async () => {
    const result = await openPlannerAction({ versionGroupSlug: "../Red Blue" });

    expect(result.status).toBe("error");
    expect(getPlannerPageData).not.toHaveBeenCalled();
  });

  it("reports a failed read instead of throwing", async () => {
    getPlannerPageData.mockRejectedValue(new Error("Unable to find a game."));

    await expect(
      openPlannerAction({ versionGroupSlug: "rb" }),
    ).resolves.toEqual({ message: "Unable to find a game.", status: "error" });
  });
});
