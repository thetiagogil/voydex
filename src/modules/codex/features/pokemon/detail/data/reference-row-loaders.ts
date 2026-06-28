const REFERENCE_PAGE_SIZE = 1000;
const REFERENCE_ID_CHUNK_SIZE = 400;

type PagedReferenceResult = {
  data: unknown[] | null;
  error: { message: string } | null;
};

const chunkIds = (ids: number[]) => {
  const chunks: number[][] = [];

  for (let index = 0; index < ids.length; index += REFERENCE_ID_CHUNK_SIZE) {
    chunks.push(ids.slice(index, index + REFERENCE_ID_CHUNK_SIZE));
  }

  return chunks;
};

export const loadPagedReferenceRows = async <T>(
  queryPage: (from: number, to: number) => PromiseLike<PagedReferenceResult>,
  errorMessage: string,
): Promise<T[]> => {
  const rows: T[] = [];

  for (let from = 0; ; from += REFERENCE_PAGE_SIZE) {
    const to = from + REFERENCE_PAGE_SIZE - 1;
    const result = await queryPage(from, to);

    if (result.error) {
      throw new Error(errorMessage);
    }

    const page = (result.data ?? []) as T[];

    rows.push(...page);

    if (page.length < REFERENCE_PAGE_SIZE) {
      return rows;
    }
  }
};

export const loadChunkedReferenceRows = async <T>(
  ids: number[],
  queryChunkPage: (
    ids: number[],
    from: number,
    to: number,
  ) => PromiseLike<PagedReferenceResult>,
  errorMessage: string,
): Promise<T[]> => {
  const rows: T[] = [];

  for (const idsChunk of chunkIds(ids)) {
    const chunkRows = await loadPagedReferenceRows<T>(
      (from, to) => queryChunkPage(idsChunk, from, to),
      errorMessage,
    );

    rows.push(...chunkRows);
  }

  return rows;
};
