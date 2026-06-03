export const healthApi = {
  check: async () => {
    const response = await fetch("/api/health", { cache: "no-store" });
    return response.ok;
  },
};
