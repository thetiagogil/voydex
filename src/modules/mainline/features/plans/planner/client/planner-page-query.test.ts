import { beforeEach, describe, expect, it, vi } from "vitest";

import type {
  PlannerGameFile,
  PlannerGamesFile,
} from "@/modules/mainline/features/plans/planner/planner-files";

import { getPlannerPageData } from "./planner-page-query";

const fetchPrebuiltData = vi.fn();

vi.mock("@/platform/prebuilt-data/use-prebuilt-data", () => ({
  fetchPrebuiltData: (path: string | null) => fetchPrebuiltData(path),
}));
vi.mock("@/modules/mainline/shared/client/signed-in-trainer", () => ({
  getSignedInTrainerId: () => Promise.resolve("trainer-1"),
}));

/* The device's Plans: none, or one saved Red / Blue Plan by id `plan-rb`. */
let savedPlan: Record<string, unknown> | null = null;

const answer = (table: string) => {
  if (table === "mainline_team_plans") return { count: 2, error: null };
  if (table === "mainline_team_plan_summary")
    return { data: savedPlan, error: null };

  return { data: [], error: null };
};

vi.mock("@/platform/local-db/open-local-db", () => ({
  getLocalQueryClient: () =>
    Promise.resolve({
      schema: () => ({
        from: (table: string) => {
          const builder: Record<string, unknown> = {
            then: (resolve: (value: unknown) => unknown) =>
              Promise.resolve(answer(table)).then(resolve),
          };

          for (const method of ["eq", "maybeSingle", "order", "select"]) {
            builder[method] = () => builder;
          }

          return builder;
        },
      }),
    }),
}));

const games: PlannerGamesFile = {
  baseSlugBySlug: {
    rb: "rb",
    "the-isle-of-armor": "swsh",
    swsh: "swsh",
  },
  versionGroups: [
    {
      gameSlugs: ["sword", "shield"],
      generationNumeral: "VIII",
      name: "Sword and Shield",
      regionName: "Galar",
      slug: "swsh",
    },
    {
      gameSlugs: ["red", "blue"],
      generationNumeral: "I",
      name: "Red and Blue",
      regionName: "Kanto",
      slug: "rb",
    },
  ],
};

const gameFile = (id: number, slug: string) =>
  ({ context: { versionGroup: { id, slug } } }) as unknown as PlannerGameFile;

const files: Record<string, unknown> = {
  "planner.json.gz": games,
  "planner/rb.json.gz": gameFile(1, "rb"),
  "planner/swsh.json.gz": gameFile(20, "swsh"),
};

describe("getPlannerPageData", () => {
  beforeEach(() => {
    vi.clearAllMocks();
    savedPlan = null;
    fetchPrebuiltData.mockImplementation((path: string | null) =>
      Promise.resolve(path ? (files[path] ?? null) : null),
    );
  });

  it("opens the newest game from its file", async () => {
    const data = await getPlannerPageData({
      planId: null,
      versionGroupSlug: null,
    });

    expect(data?.context.versionGroup.slug).toBe("swsh");
    expect(data?.versionGroups).toBe(games.versionGroups);
    expect(data).toMatchObject({ plan: null, planCount: 2 });
  });

  it("opens an expansion's address on its base game", async () => {
    const data = await getPlannerPageData({
      planId: null,
      versionGroupSlug: "the-isle-of-armor",
    });

    expect(data?.context.versionGroup.slug).toBe("swsh");
  });

  it("falls back to the newest game for an address it doesn't know", async () => {
    const data = await getPlannerPageData({
      planId: null,
      versionGroupSlug: "not-a-game",
    });

    expect(data?.context.versionGroup.slug).toBe("swsh");
  });

  it("opens a saved Plan on its own game", async () => {
    savedPlan = {
      game_slug: "red",
      is_either_version: true,
      linked_play_count: 0,
      status_slug: "active",
      team_plan_id: "4f0a7c1e-3b9d-4c2a-8e6f-1a2b3c4d5e6f",
      team_plan_name: "Kanto run",
      updated_at: null,
      version_group_slug: "rb",
    };

    const data = await getPlannerPageData({
      planId: "4f0a7c1e-3b9d-4c2a-8e6f-1a2b3c4d5e6f",
      versionGroupSlug: null,
    });

    expect(data?.plan?.name).toBe("Kanto run");
    expect(data?.context.versionGroup.slug).toBe("rb");
  });

  it("is null for a Plan that isn't the trainer's", async () => {
    await expect(
      getPlannerPageData({
        planId: "4f0a7c1e-3b9d-4c2a-8e6f-1a2b3c4d5e6f",
        versionGroupSlug: null,
      }),
    ).resolves.toBeNull();
    expect(fetchPrebuiltData).not.toHaveBeenCalledWith("planner/rb.json.gz");
  });

  it("fails plainly when the game's file is missing", async () => {
    fetchPrebuiltData.mockImplementation((path: string | null) =>
      Promise.resolve(path === "planner.json.gz" ? games : null),
    );

    await expect(
      getPlannerPageData({ planId: null, versionGroupSlug: "rb" }),
    ).rejects.toThrow("Unable to find a game for the Team Planner.");
  });
});
