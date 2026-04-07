import {
  getPlayDecision,
  savePlayDecision,
} from "@/services/gameplay/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string; itemId: string }> },
) {
  const { id: playId, itemId } = await params;

  if (Number.isNaN(Number(itemId))) {
    return NextResponse.json({ error: "Invalid item id" }, { status: 400 });
  }

  const { data, error } = await getPlayDecision(playId, Number(itemId));
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json({ selectedOptionId: data });
}

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string; itemId: string }> },
) {
  const { id: playId, itemId } = await params;
  const { decisionOptionId } = await request.json();

  if (Number.isNaN(Number(itemId))) {
    return NextResponse.json({ error: "Invalid item id" }, { status: 400 });
  }

  const { success, error } = await savePlayDecision(
    playId,
    Number(itemId),
    decisionOptionId ?? null,
  );

  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json({ success });
}
