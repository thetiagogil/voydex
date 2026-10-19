import { describe, expect, it, vi } from "vitest";

import type {
  PlayMilestoneRecordResult,
  PlayMilestoneUndoResult,
} from "@/modules/mainline/features/plays/hub/server/play-milestone-record-action";

import {
  recordMilestoneInstantly,
  type InstantRecordDeps,
  type InstantRecordOptions,
} from "./instant-milestone-record";

const saved = (recordedEarlierIds: number[]): PlayMilestoneRecordResult => ({
  completedCount: 7,
  keepsSnapshot: true,
  milestoneName: "Soul Badge",
  recordedEarlierIds,
  status: "success",
  totalCount: 17,
});

/* A promise the test settles by hand, to play out the order of events. */
const deferred = <T>() => {
  let resolve!: (value: T) => void;
  const promise = new Promise<T>((done) => {
    resolve = done;
  });

  return { promise, resolve };
};

const setup = ({
  record,
  undo = Promise.resolve({ message: "Undone", status: "success" }),
}: {
  record: Promise<PlayMilestoneRecordResult>;
  undo?: Promise<PlayMilestoneUndoResult>;
}) => {
  const changes: [number[], boolean][] = [];
  const toasts: { message: string; options?: unknown }[] = [];
  const deps: InstantRecordDeps = {
    addTeam: vi.fn(),
    notify: {
      error: vi.fn(),
      success: (message, options) => toasts.push({ message, options }),
    },
    record: vi.fn(() => record),
    refresh: vi.fn(),
    undo: vi.fn(() => undo),
  };
  const options: InstantRecordOptions = {
    earlierMilestoneIds: [60005, 60006],
    includeTeam: false,
    keepsSnapshot: false,
    onChange: (ids, recorded) => changes.push([ids, recorded]),
    toastMessage: "Soul Badge and the 2 before it recorded · 7 of 17",
  };
  const clickUndo = () =>
    (
      toasts[0]?.options as { action: { onClick: () => void } }
    ).action.onClick();

  return { changes, clickUndo, deps, options, toasts };
};

const milestone = { id: 60007, name: "Soul Badge" };
const flush = () => new Promise((done) => setTimeout(done, 0));

describe("recordMilestoneInstantly", () => {
  it("shows it recorded and the toast before the save comes back", () => {
    const pending = deferred<PlayMilestoneRecordResult>();
    const { changes, deps, options, toasts } = setup({
      record: pending.promise,
    });

    void recordMilestoneInstantly(deps, "play", milestone, options);

    expect(changes).toEqual([[[60005, 60006, 60007], true]]);
    expect(toasts[0]?.message).toBe(options.toastMessage);
    expect(deps.refresh).not.toHaveBeenCalled();
  });

  it("puts it back and says why when the save fails", async () => {
    const { changes, deps, options } = setup({
      record: Promise.resolve({ message: "No", status: "error" }),
    });

    await expect(
      recordMilestoneInstantly(deps, "play", milestone, options),
    ).resolves.toBeNull();
    expect(changes.at(-1)).toEqual([[60005, 60006, 60007], false]);
    expect(deps.notify.error).toHaveBeenCalledWith("No");
  });

  it("waits for the save before Undo clears anything", async () => {
    const pending = deferred<PlayMilestoneRecordResult>();
    const { changes, clickUndo, deps, options } = setup({
      record: pending.promise,
    });

    void recordMilestoneInstantly(deps, "play", milestone, options);
    clickUndo();
    await flush();
    expect(deps.undo).not.toHaveBeenCalled();

    pending.resolve(saved([60005, 60006]));
    await flush();
    expect(deps.undo).toHaveBeenCalledWith({
      earlierMilestoneIds: [60005, 60006],
      milestoneId: 60007,
      playId: "play",
    });
    expect(changes.at(-1)).toEqual([[60005, 60006, 60007], false]);
  });

  it("clears only what the save recorded, never one already there", async () => {
    // Another tab had already recorded 60005, so the database kept it.
    const { changes, clickUndo, deps, options } = setup({
      record: Promise.resolve(saved([60006])),
    });

    await recordMilestoneInstantly(deps, "play", milestone, options);
    clickUndo();
    await flush();

    expect(deps.undo).toHaveBeenCalledWith({
      earlierMilestoneIds: [60006],
      milestoneId: 60007,
      playId: "play",
    });
    expect(changes.at(-1)).toEqual([[60006, 60007], false]);
  });

  it("does nothing on Undo after a failed save", async () => {
    const { clickUndo, deps, options } = setup({
      record: Promise.resolve({ message: "No", status: "error" }),
    });

    await recordMilestoneInstantly(deps, "play", milestone, options);
    clickUndo();
    await flush();

    expect(deps.undo).not.toHaveBeenCalled();
  });

  it("shows it recorded again when Undo fails", async () => {
    const { changes, clickUndo, deps, options } = setup({
      record: Promise.resolve(saved([60005, 60006])),
      undo: Promise.resolve({ message: "Changed since", status: "error" }),
    });

    await recordMilestoneInstantly(deps, "play", milestone, options);
    clickUndo();
    await flush();

    expect(changes.at(-1)).toEqual([[60005, 60006, 60007], true]);
    expect(deps.notify.error).toHaveBeenCalledWith("Changed since");
  });

  it("offers Add team beside Undo where the milestone keeps a team", async () => {
    const { deps, options, toasts } = setup({
      record: Promise.resolve(saved([])),
    });

    await recordMilestoneInstantly(deps, "play", milestone, {
      ...options,
      keepsSnapshot: true,
    });

    expect(toasts[0]?.options).toMatchObject({
      action: { label: "Add team" },
      cancel: { label: "Undo" },
    });
  });
});
