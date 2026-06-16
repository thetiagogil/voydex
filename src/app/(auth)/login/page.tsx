import {
  signInWithPassword,
  signUpWithPassword,
} from "@/features/auth/actions";

type LoginPageProps = {
  searchParams?: Promise<{
    error?: string;
    next?: string;
  }>;
};

export default async function LoginPage({ searchParams }: LoginPageProps) {
  const params = await searchParams;
  const next = params?.next ?? "/dashboard";

  return (
    <main className="flex min-h-screen items-center justify-center bg-zinc-950 px-4 py-12 text-zinc-50">
      <div className="w-full max-w-md">
        <div className="mb-8">
          <p className="text-sm font-medium text-emerald-300">Voydex</p>
          <h1 className="mt-3 text-3xl font-semibold tracking-tight">
            Sign in to your Pokemon companion.
          </h1>
        </div>

        <form className="space-y-4 rounded-lg border border-zinc-800 bg-zinc-900 p-6">
          <input type="hidden" name="next" value={next} />
          <div>
            <label
              htmlFor="email"
              className="text-sm font-medium text-zinc-200"
            >
              Email
            </label>
            <input
              id="email"
              name="email"
              type="email"
              autoComplete="email"
              required
              className="mt-2 w-full rounded-md border border-zinc-700 bg-zinc-950 px-3 py-2 text-sm text-zinc-50 transition-colors outline-none focus:border-emerald-400"
            />
          </div>
          <div>
            <label
              htmlFor="password"
              className="text-sm font-medium text-zinc-200"
            >
              Password
            </label>
            <input
              id="password"
              name="password"
              type="password"
              autoComplete="current-password"
              required
              minLength={6}
              className="mt-2 w-full rounded-md border border-zinc-700 bg-zinc-950 px-3 py-2 text-sm text-zinc-50 transition-colors outline-none focus:border-emerald-400"
            />
          </div>

          {params?.error ? (
            <p className="rounded-md border border-red-900 bg-red-950 px-3 py-2 text-sm text-red-100">
              {params.error}
            </p>
          ) : null}

          <div className="grid grid-cols-2 gap-3 pt-2">
            <button
              formAction={signInWithPassword}
              className="rounded-md bg-emerald-400 px-4 py-2 text-sm font-semibold text-zinc-950 transition-colors hover:bg-emerald-300"
            >
              Sign in
            </button>
            <button
              formAction={signUpWithPassword}
              className="rounded-md border border-zinc-700 px-4 py-2 text-sm font-semibold text-zinc-100 transition-colors hover:border-zinc-500"
            >
              Create account
            </button>
          </div>
        </form>
      </div>
    </main>
  );
}
