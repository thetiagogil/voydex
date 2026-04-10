export const fetcher = async <T>(url: string): Promise<T> => {
  const res = await fetch(url);
  const data = await res.json();

  if (!res.ok) {
    throw new Error(data.error || "Request failed");
  }

  return data;
};

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
