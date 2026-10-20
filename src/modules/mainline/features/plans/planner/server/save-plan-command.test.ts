import { describe, expect, it } from "vitest";

import type { PlanSaveInput } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { savePlan } from "./save-plan-command";

type Result = { data: unknown; error: unknown };
type RpcCall = { args: Record<string, unknown>; name: string };

/*
 * A fake client: reference reads answer from `read` by table, and the one
 * RPC call is recorded and answered by `rpc`.
 */
const createFakeClient = ({
  read,
  rpc,
}: {
  read: (table: string) => Result;
  rpc: () => Result;
}) => {
  const rpcCalls: RpcCall[] = [];
  const from = (table: string) => {
    const builder: Record<string, unknown> & PromiseLike<Result> = {
      then: (onFulfilled, onRejected) =>
        Promise.resolve(read(table)).then(onFulfilled, onRejected),
    };

    for (const method of ["eq", "in", "maybeSingle", "order", "select"]) {
      builder[method] = () => builder;
    }

    return builder;
  };

  return {
    client: {
      schema: () => ({
        from,
        rpc: (name: string, args: Record<string, unknown>) => {
          rpcCalls.push({ args, name });
          return Promise.resolve(rpc());
        },
      }),
    } as unknown as ServerSupabaseClient,
    rpcCalls,
  };
};

let versionGroupReads = 0;

const readSwordShield = (table: string): Result => {
  if (table === "mainline_team_plan_summary") {
    return { data: { status_slug: "active" }, error: null };
  }

  if (table === "games") {
    return { data: [{ id: 33 }, { id: 34 }], error: null };
  }

  versionGroupReads += 1;

  return versionGroupReads % 2 === 1
    ? {
        data: {
          generation_id: 8,
          id: 20,
          name: "Sword and Shield",
          parent_version_group_id: null,
        },
        error: null,
      }
    : { data: [{ id: 21 }, { id: 22 }], error: null };
};

const baseInput: PlanSaveInput = {
  expansionVersionGroupIds: [],
  members: [],
  name: "Galar run",
  planId: null,
  versionGroupSlug: "sword-shield",
};

describe("savePlan", () => {
  it("saves the whole Plan in one call, keeping only the group's expansions", async () => {
    const { client, rpcCalls } = createFakeClient({
      read: readSwordShield,
      rpc: () => ({
        data: [{ result_created: true, result_team_plan_id: "plan-new" }],
        error: null,
      }),
    });

    await expect(
      savePlan({
        input: { ...baseInput, expansionVersionGroupIds: [21, 99] },
        supabase: client,
      }),
    ).resolves.toEqual({ created: true, planId: "plan-new" });

    expect(rpcCalls).toEqual([
      {
        args: {
          p_expansion_version_group_ids: [21],
          p_members: [],
          p_name: "Galar run",
          p_team_plan_id: undefined,
          p_version_group_id: 20,
        },
        name: "save_mainline_team_plan",
      },
    ]);
  });

  it("refuses to change an archived Plan, before writing anything", async () => {
    const { client, rpcCalls } = createFakeClient({
      read: (table) =>
        table === "mainline_team_plan_summary"
          ? { data: { status_slug: "archived" }, error: null }
          : readSwordShield(table),
      rpc: () => ({ data: null, error: null }),
    });

    await expect(
      savePlan({ input: { ...baseInput, planId: "plan-1" }, supabase: client }),
    ).rejects.toThrow("Restore this Plan to change it.");
    expect(rpcCalls).toEqual([]);
  });

  it("says why the database refused, in the Planner's words", async () => {
    const refuse = (code: string, message: string) =>
      createFakeClient({
        read: readSwordShield,
        rpc: () => ({ data: null, error: { code, message } }),
      }).client;
    const input = { ...baseInput, planId: "plan-1" };

    await expect(
      savePlan({
        input,
        supabase: refuse("55000", "A Play follows team plan plan-1"),
      }),
    ).rejects.toThrow("A Play follows this Plan, so its game stays the same.");
    await expect(
      savePlan({
        input,
        supabase: refuse("23503", "Unknown or unavailable team_plan_id plan-1"),
      }),
    ).rejects.toThrow("That Plan isn't one of yours.");
    await expect(
      savePlan({ input, supabase: refuse("XX000", "boom") }),
    ).rejects.toThrow("Unable to save the Plan right now.");
  });
});
