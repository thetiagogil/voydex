import { beforeEach, describe, expect, it, vi } from "vitest";

const updates: Record<string, unknown>[] = [];
const state = {
  iconAllowed: true,
  saveFails: false,
  userId: "user-1" as string | null,
};

vi.mock("next/cache", () => ({ revalidatePath: vi.fn() }));
vi.mock("@/platform/supabase/auth", () => ({
  getClaimsWithTimeout: vi.fn(async () => ({
    data: { claims: state.userId ? { sub: state.userId } : null },
  })),
}));
vi.mock("@/features/settings/server/profile-icon-choices-query", () => ({
  isProfileIconForm: vi.fn(async () => state.iconAllowed),
}));
vi.mock("@/platform/supabase/server-client", () => ({
  createServerSupabaseClient: vi.fn(async () => ({
    from: () => ({
      update: (update: Record<string, unknown>) => {
        updates.push(update);

        return {
          eq: () => ({
            select: () => ({
              maybeSingle: () =>
                Promise.resolve(
                  state.saveFails
                    ? { data: null, error: { message: "boom" } }
                    : {
                        data: {
                          default_trainer_name:
                            update.default_trainer_name ?? null,
                          display_name: update.display_name ?? null,
                          icon_form_id: update.icon_form_id ?? null,
                        },
                        error: null,
                      },
                ),
            }),
          }),
        };
      },
    }),
  })),
}));

import {
  finishWelcomeAction,
  saveProfileAction,
  skipWelcomeAction,
  type ProfileFormState,
} from "./profile-actions";

const idle: ProfileFormState = { message: null, status: "idle" };

const form = (fields: Record<string, string>) => {
  const data = new FormData();

  for (const [key, value] of Object.entries(fields)) {
    data.set(key, value);
  }

  return data;
};

beforeEach(() => {
  updates.length = 0;
  state.iconAllowed = true;
  state.saveFails = false;
  state.userId = "user-1";
});

describe("saveProfileAction", () => {
  it("saves the name, default trainer name and icon together", async () => {
    const result = await saveProfileAction(
      idle,
      form({
        defaultTrainerName: "  Red ",
        displayName: "Ash",
        iconFormId: "700",
      }),
    );

    expect(updates).toEqual([
      { default_trainer_name: "Red", display_name: "Ash", icon_form_id: 700 },
    ]);
    expect(result).toEqual({
      message: "Profile saved",
      saved: { defaultTrainerName: "Red", displayName: "Ash", iconFormId: 700 },
      status: "success",
    });
  });

  it("clears what was emptied", async () => {
    await saveProfileAction(
      idle,
      form({ defaultTrainerName: " ", displayName: "", iconFormId: "" }),
    );

    expect(updates).toEqual([
      { default_trainer_name: null, display_name: null, icon_form_id: null },
    ]);
  });

  it("refuses a name that is too long, without saving", async () => {
    const result = await saveProfileAction(
      idle,
      form({
        defaultTrainerName: "a".repeat(121),
        displayName: "Ash",
        iconFormId: "",
      }),
    );

    expect(result.status).toBe("error");
    expect(updates).toEqual([]);
  });

  it("refuses an icon that isn't one of the offered Pokémon", async () => {
    state.iconAllowed = false;

    const result = await saveProfileAction(
      idle,
      form({ defaultTrainerName: "", displayName: "", iconFormId: "600" }),
    );

    expect(result).toEqual({
      message: "That icon isn't one you can pick.",
      status: "error",
    });
    expect(updates).toEqual([]);
  });

  it("asks to log in again without a session", async () => {
    state.userId = null;

    const result = await saveProfileAction(
      idle,
      form({ defaultTrainerName: "", displayName: "Ash", iconFormId: "" }),
    );

    expect(result.status).toBe("error");
    expect(updates).toEqual([]);
  });

  it("says when the save failed", async () => {
    state.saveFails = true;

    const result = await saveProfileAction(
      idle,
      form({ defaultTrainerName: "", displayName: "Ash", iconFormId: "" }),
    );

    expect(result.status).toBe("error");
  });
});

describe("finishWelcomeAction", () => {
  it("saves the name and icon and marks Welcome done", async () => {
    const result = await finishWelcomeAction(
      idle,
      form({ displayName: "Red", iconFormId: "100" }),
    );

    expect(updates).toHaveLength(1);
    expect(updates[0]).toMatchObject({
      display_name: "Red",
      icon_form_id: 100,
    });
    expect(updates[0]?.welcome_completed_at).toEqual(expect.any(String));
    expect(result.status).toBe("success");
  });

  it("leaves your name and icon alone when you gave none, and still marks it done", async () => {
    await finishWelcomeAction(idle, form({ displayName: " ", iconFormId: "" }));

    expect(Object.keys(updates[0] ?? {})).toEqual(["welcome_completed_at"]);
  });

  it("does not mark Welcome done when the icon is refused", async () => {
    state.iconAllowed = false;

    const result = await finishWelcomeAction(
      idle,
      form({ displayName: "Red", iconFormId: "600" }),
    );

    expect(result.status).toBe("error");
    expect(updates).toEqual([]);
  });
});

describe("skipWelcomeAction", () => {
  it("only marks Welcome done", async () => {
    const result = await skipWelcomeAction();

    expect(Object.keys(updates[0] ?? {})).toEqual(["welcome_completed_at"]);
    expect(result.status).toBe("success");
  });

  it("reports a failed save so Welcome isn't left half done", async () => {
    state.saveFails = true;

    expect((await skipWelcomeAction()).status).toBe("error");
  });
});
