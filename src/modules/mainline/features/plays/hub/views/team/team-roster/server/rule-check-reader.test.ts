import { describe, expect, it, vi } from "vitest";

import type { MainlinePlayRuleRows } from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readPlayRuleCheckContext } from "./rule-check-reader";

const ruleRows = vi.hoisted(() => ({ current: null as unknown }));

vi.mock(
  "@/modules/mainline/features/plays/hub/server/play-hub-context-reader",
  () => ({ readMainlinePlayRuleRows: async () => ruleRows.current }),
);

const rulesFor = (slug: string): MainlinePlayRuleRows => ({
  links: [
    {
      challenge_rule_id: slug,
      config_override: null,
      created_at: "2026-10-01T00:00:00Z",
      play_id: "play",
    },
  ],
  rules: [
    {
      config: {},
      created_at: "2026-10-01T00:00:00Z",
      description: null,
      id: slug,
      name: slug,
      rule_type_id: 3,
      slug,
      updated_at: "2026-10-01T00:00:00Z",
      user_id: null,
    },
  ],
  types: [],
});

const play = { play_id: "play" } as MainlinePlaySummary;
const supabase = {} as ServerSupabaseClient;

describe("readPlayRuleCheckContext", () => {
  it("reads Level caps' cap when the Play uses it", async () => {
    ruleRows.current = rulesFor("level_caps");
    const readLevelCap = vi
      .fn()
      .mockResolvedValue({ status: "no-battle" } as const);

    await expect(
      readPlayRuleCheckContext(supabase, play, "user", { readLevelCap }),
    ).resolves.toMatchObject({ levelCap: { status: "no-battle" } });
    expect(readLevelCap).toHaveBeenCalledOnce();
  });

  it("leaves Story's battles unread when the Play doesn't use Level caps", async () => {
    ruleRows.current = rulesFor("shiny_only");
    const readLevelCap = vi.fn();

    await expect(
      readPlayRuleCheckContext(supabase, play, "user", { readLevelCap }),
    ).resolves.toMatchObject({ levelCap: null });
    expect(readLevelCap).not.toHaveBeenCalled();
  });
});
