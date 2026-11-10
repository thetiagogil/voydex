import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import {
  recordPlayMilestone,
  undoPlayMilestone,
} from "./play-milestone-record-command";

type Result = { data: unknown; error: unknown };

/*
 * A client that answers the milestone read with `detail`, the journey count
 * with `journey`, and every RPC with `rpcResult`, and keeps what it was asked.
 */
const createFakeClient = ({
  detail = null,
  journey = [],
  rpcResult = { data: null, error: null },
}: {
  detail?: unknown;
  journey?: unknown[];
  rpcResult?: Result;
}) => {
  const filters: [string, unknown][] = [];
  const rpcCalls: { args: Record<string, unknown>; name: string }[] = [];
  const query = {
    eq: (column: string, value: unknown) => {
      filters.push([column, value]);
      return query;
    },
    maybeSingle: () => Promise.resolve({ data: detail, error: null }),
    select: () => query,
    then: (resolve: (result: Result) => unknown) =>
      resolve({ data: journey, error: null }),
  };

  return {
    client: {
      schema: () => ({
        from: () => query,
        rpc: (name: string, args: Record<string, unknown>) => {
          rpcCalls.push({ args, name });
          return Promise.resolve(rpcResult);
        },
      }),
    } as unknown as ServerSupabaseClient,
    filters,
    rpcCalls,
  };
};

const playId = "00000000-0000-4000-8000-000000000001";

describe("recordPlayMilestone", () => {
  const detail = {
    is_completed: false,
    milestone_name: "Soul Badge",
    snapshot_policy_slug: "optional",
    version_group_id: 6,
  };

  it("records the ones before it in the same call and says which it recorded", async () => {
    const { client, rpcCalls } = createFakeClient({
      detail,
      journey: [
        { is_completed: true },
        { is_completed: true },
        { is_completed: false },
      ],
      rpcResult: {
        data: [{ completed_milestone_ids: [60005, 60006, 60008] }],
        error: null,
      },
    });

    const result = await recordPlayMilestone(client, {
      decisionOptionId: null,
      earlierMilestoneIds: [60004, 60005, 60006],
      includeTeam: false,
      milestoneId: 60008,
      playId,
    });

    expect(rpcCalls).toHaveLength(1);
    expect(rpcCalls[0]?.args).toMatchObject({
      p_milestone_id: 60008,
      p_record_earlier_milestone_ids: [60004, 60005, 60006],
    });
    // 60004 was already recorded: the database kept it, so Undo must too.
    expect(result.recordedEarlierIds).toEqual([60005, 60006]);
    expect(result).toMatchObject({ completedCount: 2, totalCount: 3 });
  });

  it("counts required milestones only, as the Story ring does", async () => {
    const { client, filters } = createFakeClient({
      detail,
      rpcResult: { data: [{ completed_milestone_ids: [60008] }], error: null },
    });

    await recordPlayMilestone(client, {
      decisionOptionId: null,
      earlierMilestoneIds: [],
      includeTeam: false,
      milestoneId: 60008,
      playId,
    });

    expect(filters).toContainEqual(["is_required_for_completion", true]);
  });

  it("refuses a milestone already recorded without writing", async () => {
    const { client, rpcCalls } = createFakeClient({
      detail: { ...detail, is_completed: true },
    });

    await expect(
      recordPlayMilestone(client, {
        decisionOptionId: null,
        earlierMilestoneIds: [],
        includeTeam: false,
        milestoneId: 60008,
        playId,
      }),
    ).rejects.toThrow("Soul Badge is already recorded.");
    expect(rpcCalls).toHaveLength(0);
  });
});

describe("undoPlayMilestone", () => {
  it("clears the milestone with the ones recorded along with it, as previewed", async () => {
    const { client, rpcCalls } = createFakeClient({});

    await undoPlayMilestone(client, {
      earlierMilestoneIds: [60006, 60005],
      milestoneId: 60008,
      playId,
    });

    expect(rpcCalls[0]).toEqual({
      args: {
        p_also_clear_milestone_ids: [60006, 60005],
        p_expected_affected_milestone_ids: [60005, 60006, 60008],
        p_milestone_id: 60008,
        p_play_id: playId,
      },
      name: "mark_mainline_play_milestone_incomplete",
    });
  });

  it("says why when something recorded since depends on it", async () => {
    const { client } = createFakeClient({
      rpcResult: { data: null, error: { message: "40001" } },
    });

    await expect(
      undoPlayMilestone(client, {
        earlierMilestoneIds: [],
        milestoneId: 60008,
        playId,
      }),
    ).rejects.toThrow("Couldn't undo");
  });
});
