import { describe, expect, it, vi } from "vitest";

import { signOutOfAccount } from "@/features/app-shell/client/sign-out";

describe("signOutOfAccount", () => {
  it("signs out everywhere when the network answers", async () => {
    const signOut = vi.fn().mockResolvedValue({ error: null });

    await signOutOfAccount({ signOut });

    expect(signOut).toHaveBeenCalledTimes(1);
    expect(signOut).toHaveBeenCalledWith();
  });

  it("still signs this browser out when signing out everywhere fails", async () => {
    const signOut = vi
      .fn()
      .mockResolvedValueOnce({ error: new Error("Failed to fetch") })
      .mockResolvedValueOnce({ error: null });

    await signOutOfAccount({ signOut });

    expect(signOut).toHaveBeenNthCalledWith(2, { scope: "local" });
  });
});
