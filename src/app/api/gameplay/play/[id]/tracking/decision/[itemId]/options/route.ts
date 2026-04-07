import { getDecisionOptions } from "@/services/gameplay/play-tracking";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string; itemId: string }> },
) {
  const { itemId } = await params;

  if (Number.isNaN(Number(itemId))) {
    return NextResponse.json({ error: "Invalid item id" }, { status: 400 });
  }

  const { data, error } = await getDecisionOptions(Number(itemId));
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}
