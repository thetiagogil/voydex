import { updatePlayBodySchema } from "@/features/play/api/schemas";
import { deletePlay, getPlay, updatePlay } from "@/features/play/server/play";
import {
  badRequestResponse,
  conflictResponse,
  errorResponse,
  isDuplicateKeyError,
  jsonResponse,
  notFoundResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id } = await params;
    if (!id) return badRequestResponse("Missing play id");

    const { data, error } = await getPlay(id);

    if (error) return errorResponse(error);
    if (!data) return notFoundResponse("Play not found");

    return jsonResponse({ data });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id } = await params;
    if (!id) return badRequestResponse("Missing play id");

    const parsed = await parseJsonBody(request, updatePlayBodySchema);
    if (parsed.error) return parsed.error;

    const { error } = await updatePlay(id, parsed.data);

    if (error) {
      if (isDuplicateKeyError(error)) {
        return conflictResponse("A play with this name already exists");
      }

      return errorResponse(error);
    }

    const playResult = await getPlay(id);
    if (playResult.error) return errorResponse(playResult.error);
    if (!playResult.data) return notFoundResponse("Play not found");

    return jsonResponse({ data: playResult.data });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}

export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id } = await params;
    if (!id) return badRequestResponse("Missing play id");

    const { error } = await deletePlay(id);

    if (error) return errorResponse(error);

    return jsonResponse({ success: true });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
