import { readDeviceSchemaSql } from "@/platform/local-db/device-schema-source";

/* Built once with the app, so it always matches the schema it was built from. */
export const dynamic = "force-static";

export const GET = () =>
  new Response(readDeviceSchemaSql(), {
    headers: { "content-type": "text/plain; charset=utf-8" },
  });
