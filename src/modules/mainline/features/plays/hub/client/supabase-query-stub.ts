import { vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

type SupabaseStubResult = {
  data: unknown;
  error: unknown;
};

export class SupabaseQueryStub implements PromiseLike<SupabaseStubResult> {
  readonly eq = vi.fn(() => this);
  readonly in = vi.fn(() => this);
  readonly lte = vi.fn(() => this);
  readonly order = vi.fn(() => this);
  readonly select = vi.fn(() => this);

  constructor(private readonly result: SupabaseStubResult) {}

  then<TResult1 = SupabaseStubResult, TResult2 = never>(
    onFulfilled?:
      | ((value: SupabaseStubResult) => TResult1 | PromiseLike<TResult1>)
      | null,
    onRejected?: ((reason: unknown) => TResult2 | PromiseLike<TResult2>) | null,
  ): PromiseLike<TResult1 | TResult2> {
    return Promise.resolve(this.result).then(onFulfilled, onRejected);
  }
}

export const createSequencedSupabaseClient = (queries: SupabaseQueryStub[]) => {
  const pendingQueries = [...queries];
  const from = vi.fn(() => {
    const query = pendingQueries.shift();

    if (!query) {
      throw new Error("Unexpected Supabase query in reader test.");
    }

    return query;
  });
  const schema = vi.fn(() => ({ from }));

  return {
    client: { schema } as unknown as ServerSupabaseClient,
    from,
    schema,
  };
};
