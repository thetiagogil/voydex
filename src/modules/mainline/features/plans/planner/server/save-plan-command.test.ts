import { describe, expect, it, vi } from "vitest";

import type { PlanSaveInput } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { savePlan } from "./save-plan-command";

type Operation = "delete" | "insert" | "select" | "update";
type Call = { operation: Operation; table: string; values?: unknown };
type Result = { count?: number | null; data: unknown; error: unknown };

/*
 * A fake client that records each request (table and operation) and answers
 * from `respond`. Every builder method chains; awaiting it resolves.
 */
const createFakeClient = (respond: (call: Call) => Result) => {
  const calls: Call[] = [];
  const from = (table: string) => {
    const call: Call = { operation: "select", table };
    const builder: Record<string, unknown> & PromiseLike<Result> = {
      then: (onFulfilled, onRejected) =>
        Promise.resolve(respond(call)).then(onFulfilled, onRejected),
    };
    const chain = () => builder;

    for (const method of [
      "eq",
      "in",
      "is",
      "limit",
      "lte",
      "maybeSingle",
      "not",
      "order",
      "range",
      "select",
      "single",
    ]) {
      builder[method] = chain;
    }

    for (const operation of ["delete", "insert", "update"] as const) {
      builder[operation] = (values?: unknown) => {
        call.operation = operation;
        call.values = values;
        return builder;
      };
    }

    calls.push(call);

    return builder;
  };

  return {
    calls,
    client: { schema: () => ({ from }) } as unknown as ServerSupabaseClient,
  };
};

const ok = (data: unknown): Result => ({ data, error: null });
const failed: Result = { data: null, error: { message: "boom" } };

const referenceRows = (call: Call): Result | null => {
  switch (call.table) {
    case "games":
      return ok([{ id: 33 }, { id: 34 }]);
    default:
      return null;
  }
};

const baseInput: PlanSaveInput = {
  expansionVersionGroupIds: [],
  members: [],
  name: "Galar run",
  planId: null,
  versionGroupSlug: "sword-shield",
};

describe("savePlan", () => {
  it("deletes a new Plan when writing its expansions fails", async () => {
    let expansionLookups = 0;
    const { calls, client } = createFakeClient((call) => {
      if (call.table === "version_groups") {
        expansionLookups += 1;
        return expansionLookups === 1
          ? ok({
              generation_id: 8,
              id: 20,
              name: "Sword and Shield",
              parent_version_group_id: null,
            })
          : ok([{ id: 21 }]);
      }

      if (call.table === "mainline_team_plan_optional_content_scopes") {
        return failed;
      }

      if (call.table === "mainline_team_plans" && call.operation === "insert") {
        return ok({ id: "plan-new" });
      }

      return referenceRows(call) ?? ok({ id: 1 });
    });

    await expect(
      savePlan({
        input: { ...baseInput, expansionVersionGroupIds: [21] },
        supabase: client,
        userId: "user-1",
      }),
    ).rejects.toThrow("Unable to save the Plan right now.");

    expect(calls.at(-1)).toMatchObject({
      operation: "delete",
      table: "mainline_team_plans",
    });
  });

  it("puts a saved Plan's row, Pokémon, moves and expansions back when an edit fails", async () => {
    const member = { id: "member-1", slot: 1, team_plan_id: "plan-1" };
    const scope = { game_id: 33, team_plan_id: "plan-1", version_group_id: 21 };
    let lookups = 0;
    let scopeInserts = 0;
    const { calls, client } = createFakeClient((call) => {
      if (call.table === "version_groups") {
        lookups += 1;
        return lookups === 1
          ? ok({
              generation_id: 8,
              id: 20,
              name: "Sword and Shield",
              parent_version_group_id: null,
            })
          : ok([{ id: 21 }]);
      }

      if (call.table === "mainline_team_plans" && call.operation === "select") {
        return ok({ game_id: 33, name: "Old name", version_group_id: 20 });
      }

      if (
        call.table === "mainline_team_plan_members" &&
        call.operation === "select"
      ) {
        return ok([member]);
      }

      if (
        call.table === "mainline_team_plan_member_moves" &&
        call.operation === "select"
      ) {
        return ok([
          {
            mainline_team_plan_members: { team_plan_id: "plan-1" },
            move_id: 7,
            slot: 1,
            team_plan_member_id: "member-1",
          },
        ]);
      }

      if (call.table === "mainline_team_plan_optional_content_scopes") {
        if (call.operation === "select") return ok([scope]);
        if (call.operation === "insert") {
          scopeInserts += 1;
          /* The edit's expansions fail; the restore's go through. */
          return scopeInserts === 1 ? failed : ok(null);
        }
      }

      return referenceRows(call) ?? ok(null);
    });

    await expect(
      savePlan({
        input: {
          ...baseInput,
          expansionVersionGroupIds: [21],
          planId: "00000000-0000-4000-8000-000000000001",
        },
        supabase: client,
        userId: "user-1",
      }),
    ).rejects.toThrow("Unable to save the Plan right now.");

    const restore = calls.slice(-6);

    expect(
      restore.map(({ operation, table }) => `${operation} ${table}`),
    ).toEqual([
      "delete mainline_team_plan_optional_content_scopes",
      "delete mainline_team_plan_members",
      "update mainline_team_plans",
      "insert mainline_team_plan_members",
      "insert mainline_team_plan_member_moves",
      "insert mainline_team_plan_optional_content_scopes",
    ]);
    expect(restore[2].values).toEqual({
      game_id: 33,
      name: "Old name",
      version_group_id: 20,
    });
    expect(restore[4].values).toEqual([
      { move_id: 7, slot: 1, team_plan_member_id: "member-1" },
    ]);
  });

  it("says so when the previous version can't be put back", async () => {
    const consoleError = vi
      .spyOn(console, "error")
      .mockImplementation(() => {});
    let lookups = 0;
    const { client } = createFakeClient((call) => {
      if (call.table === "version_groups") {
        lookups += 1;
        return lookups === 1
          ? ok({
              generation_id: 8,
              id: 20,
              name: "Sword and Shield",
              parent_version_group_id: null,
            })
          : ok([]);
      }

      if (call.table === "mainline_team_plans") {
        return call.operation === "select"
          ? ok({ game_id: 33, name: "Old", version_group_id: 20 })
          : failed;
      }

      return referenceRows(call) ?? ok([]);
    });

    await expect(
      savePlan({
        input: { ...baseInput, planId: "00000000-0000-4000-8000-000000000001" },
        supabase: client,
        userId: "user-1",
      }),
    ).rejects.toThrow("its last saved version may be incomplete");
    expect(consoleError).toHaveBeenCalled();
    consoleError.mockRestore();
  });
});
