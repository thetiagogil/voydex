import { collectibleEntryBodySchema } from "@/features/play/api/schemas";
import { uncollectEntry } from "@/features/play/server/play-collectibles";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const parsed = await parseJsonBody(request, collectibleEntryBodySchema);
    if (parsed.error) return parsed.error;

    const result = await uncollectEntry(playId, parsed.data.collectibleEntryId);

    if (result.error) return errorResponse(result.error);

    return jsonResponse({ success: true });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
