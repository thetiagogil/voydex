import { ENV_VARS } from "@/lib/supabase/env";
import { jsonResponse } from "@/lib/api/route";

export async function GET() {
  const supabaseUrl = ENV_VARS.SUPABASE_URL;

  if (!supabaseUrl) {
    return jsonResponse(
      { status: "unhealthy", reason: "missing_config" },
      { status: 503 },
    );
  }

  try {
    const controller = new AbortController();
    const timeout = setTimeout(() => controller.abort(), 5000);

    const res = await fetch(`${supabaseUrl}/rest/v1/`, {
      method: "HEAD",
      headers: { apikey: ENV_VARS.SUPABASE_PUBLISHABLE_KEY },
      signal: controller.signal,
    });

    clearTimeout(timeout);

    // Any sub-500 response means the server is reachable — only 5xx or a
    // network failure (caught below) indicates the project is truly down.
    if (res.status < 500) {
      return jsonResponse({ status: "healthy" }, { status: 200 });
    }

    return jsonResponse(
      { status: "unhealthy", reason: "server_error" },
      { status: 503 },
    );
  } catch {
    return jsonResponse(
      { status: "unhealthy", reason: "unreachable" },
      { status: 503 },
    );
  }
}
