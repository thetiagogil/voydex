import {
  getPlayDecision,
  savePlayDecision,
} from "@/features/play/server/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string; trackingItemId: string }> },
) {
  try {
    const { id: playId, trackingItemId: idStr } = await params;
    const trackingItemId = parseInt(idStr, 10);

    if (!playId || isNaN(trackingItemId))
      return NextResponse.json(
        { error: "Missing required params" },
        { status: 400 },
      );

    const { data, error } = await getPlayDecision(playId, trackingItemId);

    if (error)
      return NextResponse.json({ error: String(error) }, { status: 500 });

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string; trackingItemId: string }> },
) {
  try {
    const { id: playId, trackingItemId: idStr } = await params;
    const trackingItemId = parseInt(idStr, 10);

    if (!playId || isNaN(trackingItemId))
      return NextResponse.json(
        { error: "Missing required params" },
        { status: 400 },
      );

    const body = await request.json();
    const { success, error } = await savePlayDecision(
      playId,
      trackingItemId,
      body.decisionOptionId,
    );

    if (error)
      return NextResponse.json({ error: String(error) }, { status: 500 });

    return NextResponse.json({ success });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
