import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { Json } from "@/shared/types/database.types";

import { updatePlayChallengeRules } from "./play-settings-commands";

type Result = { data: unknown; error: unknown };
type Rule = { config: Json; id: string; name: string };

const playId = "00000000-0000-4000-8000-000000000001";
const monotype: Rule = {
  config: { type_id: null },
  id: "mono",
  name: "Monotype",
};
const levelCaps: Rule = { config: {}, id: "caps", name: "Level caps" };

/*
 * Reads the rules you can see and the ones the Play keeps; records each
 * write in order with what it sent, and answers the upsert as told.
 */
const createFakeClient = ({
  kept,
  upsertError = null,
  visible,
}: {
  kept: string[];
  upsertError?: { code: string; message: string } | null;
  visible: Rule[];
}) => {
  const writes: { method: string; rows?: unknown }[] = [];
  const from = (table: string) => {
    let result: Result = {
      data:
        table === "mainline_challenge_rules"
          ? visible
          : kept.map((id) => ({ challenge_rule_id: id })),
      error: null,
    };
    const builder: Record<string, unknown> & PromiseLike<Result> = {
      then: (onFulfilled, onRejected) =>
        Promise.resolve(result).then(onFulfilled, onRejected),
    };

    for (const method of ["eq", "in", "select"]) {
      builder[method] = () => builder;
    }

    builder.upsert = (rows: unknown) => {
      writes.push({ method: "upsert", rows });
      result = { data: null, error: upsertError };
      return builder;
    };
    builder.delete = () => {
      writes.push({ method: "delete" });
      result = { data: null, error: null };
      return builder;
    };

    return builder;
  };

  return {
    client: {
      schema: () => ({ from }),
    } as unknown as ServerSupabaseClient,
    writes,
  };
};

describe("updatePlayChallengeRules", () => {
  it("saves the kept rules with their options before taking others off", async () => {
    const { client, writes } = createFakeClient({
      kept: ["mono", "caps"],
      visible: [monotype],
    });

    await updatePlayChallengeRules(client, {
      playId,
      rules: [{ config: { type_id: 3 }, ruleId: "mono" }],
    });
    expect(writes).toEqual([
      {
        method: "upsert",
        rows: [
          {
            challenge_rule_id: "mono",
            config_override: { type_id: 3 },
            play_id: playId,
          },
        ],
      },
      { method: "delete" },
    ]);
  });

  it("takes nothing off when the game refuses the type", async () => {
    const { client, writes } = createFakeClient({
      kept: ["mono", "caps"],
      upsertError: {
        code: "23514",
        message: "Type 18 is not in the game of play x",
      },
      visible: [monotype],
    });

    await expect(
      updatePlayChallengeRules(client, {
        playId,
        rules: [{ config: { type_id: 18 }, ruleId: "mono" }],
      }),
    ).rejects.toThrow("That type isn't in this Play's game.");
    expect(writes.map((write) => write.method)).toEqual(["upsert"]);
  });

  it("keeps other refusals generic", async () => {
    const { client } = createFakeClient({
      kept: [],
      upsertError: {
        code: "23514",
        message: "Challenge rule caps has no option type_id",
      },
      visible: [levelCaps],
    });

    await expect(
      updatePlayChallengeRules(client, {
        playId,
        rules: [{ config: null, ruleId: "caps" }],
      }),
    ).rejects.toThrow("Unable to save those rules.");
  });

  it("writes nothing for a rule you can't see or Monotype without a type", async () => {
    const hidden = createFakeClient({ kept: [], visible: [] });

    await expect(
      updatePlayChallengeRules(hidden.client, {
        playId,
        rules: [{ config: null, ruleId: "theirs" }],
      }),
    ).rejects.toThrow("One of those rules isn't available.");
    expect(hidden.writes).toEqual([]);

    const untyped = createFakeClient({ kept: [], visible: [monotype] });

    await expect(
      updatePlayChallengeRules(untyped.client, {
        playId,
        rules: [{ config: { type_id: null }, ruleId: "mono" }],
      }),
    ).rejects.toThrow("Pick a type for Monotype.");
    expect(untyped.writes).toEqual([]);
  });

  it("only takes rules off when none are kept", async () => {
    const { client, writes } = createFakeClient({
      kept: ["caps"],
      visible: [],
    });

    await updatePlayChallengeRules(client, { playId, rules: [] });
    expect(writes).toEqual([{ method: "delete" }]);
  });
});
