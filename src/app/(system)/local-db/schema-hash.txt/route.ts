import { readDeviceSchemaHash } from "@/platform/local-db/device-schema-source";

/* Built once with the app; a device compares it with the schema it has. */
export const dynamic = "force-static";

export const GET = () =>
  new Response(readDeviceSchemaHash(), {
    headers: { "content-type": "text/plain; charset=utf-8" },
  });
