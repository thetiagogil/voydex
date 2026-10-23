/*
 * Stands in for the voydex-assets site in CI: every path answers with the same
 * 1px WebP, so images load without the browser tests calling the real site
 * (Vercel Hobby counts each request against a monthly allowance).
 */
import { createServer } from "node:http";

const port = Number(process.env.ASSET_STUB_PORT ?? 3999);
const pixel = Buffer.from(
  "UklGRhoAAABXRUJQVlA4TA0AAAAvAAAAEAcQERGIiP4HAA==",
  "base64",
);

createServer((_request, response) => {
  response.writeHead(200, {
    "Content-Type": "image/webp",
    "Cache-Control": "public, max-age=3600",
  });
  response.end(pixel);
}).listen(port, "127.0.0.1");
