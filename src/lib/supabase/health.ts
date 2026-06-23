import { getSupabasePublicConfig } from "@/lib/env";
export type SupabaseHealth =
  | {
      status: "healthy";
    }
  | {
      reason: "missing_config" | "server_error" | "unreachable";
      status: "unhealthy";
    };
export const checkSupabaseHealth = async (): Promise<SupabaseHealth> => {
  let config: ReturnType<typeof getSupabasePublicConfig>;
  try {
    config = getSupabasePublicConfig();
  } catch {
    return { status: "unhealthy", reason: "missing_config" };
  }
  const controller = new AbortController();
  const timeout = setTimeout(() => controller.abort(), 5000);
  try {
    const response = await fetch(`${config.url}/rest/v1/`, {
      method: "HEAD",
      headers: {
        apikey: config.key,
      },
      signal: controller.signal,
    });
    if (response.status < 500) {
      return { status: "healthy" };
    }
    return { status: "unhealthy", reason: "server_error" };
  } catch {
    return { status: "unhealthy", reason: "unreachable" };
  } finally {
    clearTimeout(timeout);
  }
};
