import { setTimeout as wait } from "timers/promises";
import {
  DEFAULT_DELAY_MS,
  GEN_MAP,
  SKIP_SLUGS,
} from "../config/pokeapi-config.js";
import { prettyLog } from "./logger.js";

export async function fetchJson(url, attempts = 3) {
  let lastErr;
  for (let i = 0; i < attempts; i++) {
    try {
      const res = await fetch(url);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      return await res.json();
    } catch (err) {
      lastErr = err;
      const backoff = 200 * Math.pow(2, i);
      await wait(backoff);
    }
  }
  throw lastErr;
}

export function titleCase(s) {
  return String(s || "")
    .replace(/[-_]/g, " ")
    .split(" ")
    .map((p) => (p ? p.charAt(0).toUpperCase() + p.slice(1) : ""))
    .join(" ");
}

export function normalizeTypeObject(obj) {
  if (!obj || typeof obj.id !== "number") return null;
  const slug = String(obj.name || "").toLowerCase();
  if (SKIP_SLUGS.has(slug)) return null;
  const id = obj.id;
  const name = titleCase(slug);
  let generation_introduced_id = 1;
  if (obj.generation && obj.generation.name) {
    const g = String(obj.generation.name).toLowerCase();
    if (GEN_MAP[g]) generation_introduced_id = GEN_MAP[g];
  }
  return { id, slug, name, generation_introduced_id };
}

export async function fetchAllTypes(opts = {}) {
  const indexUrl = "https://pokeapi.co/api/v2/type";
  const index = await fetchJson(indexUrl);
  const entries = Array.isArray(index.results) ? index.results : [];
  prettyLog(`Found ${entries.length} type entries`);
  const rows = [];
  for (const e of entries) {
    try {
      const obj = await fetchJson(e.url);
      const norm = normalizeTypeObject(obj);
      if (norm) rows.push(norm);
      else prettyLog(`Skipping ${String(obj?.name || e.url)}`, { emoji: "⏭️" });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }
    const delayMs = opts.delay ?? DEFAULT_DELAY_MS;
    if (delayMs) await wait(delayMs);
  }
  // deterministic order
  rows.sort((a, b) => a.id - b.id);
  return rows;
}
