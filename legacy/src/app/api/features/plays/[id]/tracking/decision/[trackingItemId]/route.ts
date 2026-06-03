import { decisionBodySchema } from "@/features/play/api/schemas";
import {
  getPlayDecision,
  savePlayDecision,
} from "@/features/play/server/play-tracking";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseJsonBody,
  parseRequiredInt,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string; trackingItemId: string }> },
) {
  try {
    const { id: playId, trackingItemId: idStr } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const trackingItemId = parseRequiredInt(idStr, "tracking item id");
    if (trackingItemId.error) return trackingItemId.error;

    const { data, error } = await getPlayDecision(playId, trackingItemId.data);

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string; trackingItemId: string }> },
) {
  try {
    const { id: playId, trackingItemId: idStr } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const trackingItemId = parseRequiredInt(idStr, "tracking item id");
    if (trackingItemId.error) return trackingItemId.error;

    const parsed = await parseJsonBody(request, decisionBodySchema);
    if (parsed.error) return parsed.error;

    const { success, error } = await savePlayDecision(
      playId,
      trackingItemId.data,
      parsed.data.decisionOptionId,
    );

    if (error) return errorResponse(error);

    return jsonResponse({ success });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
