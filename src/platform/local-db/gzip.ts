/*
 * Gzip for the files the device reads and writes (game data, backups),
 * with the browser's own streams.
 */

export const isGzip = (bytes: Uint8Array) =>
  bytes[0] === 0x1f && bytes[1] === 0x8b;

export const gzipText = async (text: string) =>
  new Uint8Array(
    await new Response(
      new Blob([text]).stream().pipeThrough(new CompressionStream("gzip")),
    ).arrayBuffer(),
  );

/* Gzipped bytes as text; plain bytes (already unzipped) are read as they are. */
export const readMaybeGzippedText = async (bytes: Uint8Array) =>
  isGzip(bytes)
    ? new Response(
        new Blob([bytes as BlobPart])
          .stream()
          .pipeThrough(new DecompressionStream("gzip")),
      ).text()
    : new TextDecoder().decode(bytes);
