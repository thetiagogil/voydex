import { collectibleEntryBodySchema } from "@/features/play/api/schemas";
import { collectEntry } from "@/features/play/server/play-collectibles";
import {
  badRequestResponse,
  createdResponse,
  errorResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const parsed = await parseJsonBody(request, collectibleEntryBodySchema);
    if (parsed.error) return parsed.error;

    const { data, error } = await collectEntry(
      playId,
      parsed.data.collectibleEntryId,
    );

    if (error) return errorResponse(error);

    return createdResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
