/**
 * Shared fetch utility with consistent error handling for React Query hooks.
 * Automatically parses JSON and throws errors with proper messages.
 *
 * @example
 * const { data } = useQuery({
 *   queryKey: ["abilities"],
 *   queryFn: () => fetcher<BaseInfo[]>("/api/reference/abilities"),
 * });
 */
export const fetcher = async <T>(url: string): Promise<T> => {
  const res = await fetch(url);
  const data = await res.json();

  if (!res.ok) {
    throw new Error(data.error || "Request failed");
  }

  return data;
};

/**
 * Fetcher for POST requests with JSON body.
 *
 * @example
 * mutationFn: (body) => postFetcher("/api/gameplay/play/123/check", body),
 */
export const postFetcher = async <T, B = unknown>(
  url: string,
  body: B,
): Promise<T> => {
  const res = await fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(body),
  });
  const data = await res.json();

  if (!res.ok) {
    throw new Error(data.error || "Request failed");
  }

  return data;
};

/**
 * Fetcher for DELETE requests.
 *
 * @example
 * mutationFn: () => deleteFetcher("/api/gameplay/play/123/item/1"),
 */
export const deleteFetcher = async <T>(
  url: string,
  body?: unknown,
): Promise<T> => {
  const options: RequestInit = {
    method: "DELETE",
    headers: { "Content-Type": "application/json" },
  };

  if (body) {
    options.body = JSON.stringify(body);
  }

  const res = await fetch(url, options);
  const data = await res.json();

  if (!res.ok) {
    throw new Error(data.error || "Request failed");
  }

  return data;
};
