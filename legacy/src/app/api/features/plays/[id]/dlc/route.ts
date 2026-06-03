import { playDlcBodySchema } from "@/features/play/api/schemas";
import { getPlay } from "@/features/play/server/play";
import { setPlayDlcs } from "@/features/play/server/play-dlc";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  notFoundResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const parsed = await parseJsonBody(request, playDlcBodySchema);
    if (parsed.error) return parsed.error;

    const { success, error } = await setPlayDlcs(
      playId,
      parsed.data.versionGroupIds,
    );

    if (error) return errorResponse(error);

    const playResult = await getPlay(playId);
    if (playResult.error) return errorResponse(playResult.error);
    if (!playResult.data) return notFoundResponse("Play not found");

    return jsonResponse({ success, data: playResult.data });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
