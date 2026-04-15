type JsonRequestOptions<B = unknown> = {
  method?: "GET" | "POST" | "PUT" | "DELETE";
  body?: B;
};

const requestJson = async <T, B = unknown>(
  url: string,
  options?: JsonRequestOptions<B>,
): Promise<T> => {
  const res = await fetch(url, {
    method: options?.method ?? "GET",
    headers:
      options?.body === undefined
        ? undefined
        : { "Content-Type": "application/json" },
    body:
      options?.body === undefined ? undefined : JSON.stringify(options.body),
  });
  const text = await res.text();
  const data = text ? JSON.parse(text) : null;

  if (!res.ok) {
    throw new Error(data?.error || data?.message || "Request failed");
  }

  return data as T;
};

export const fetcher = async <T>(url: string): Promise<T> => {
  return requestJson<T>(url);
};

export const postFetcher = async <T, B = unknown>(
  url: string,
  body?: B,
): Promise<T> => {
  return requestJson<T, B>(url, { method: "POST", body });
};

export const putFetcher = async <T, B = unknown>(
  url: string,
  body?: B,
): Promise<T> => {
  return requestJson<T, B>(url, { method: "PUT", body });
};

export const deleteFetcher = async <T>(
  url: string,
  body?: unknown,
): Promise<T> => {
  return requestJson<T>(url, { method: "DELETE", body });
};
