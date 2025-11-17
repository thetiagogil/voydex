import { getPlayById } from "@/services/play";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id } = await params;
  const playId = id;
  if (!playId) return NextResponse.json("Missing play id", { status: 400 });

  const { data, error } = await getPlayById(playId);
  if (error) return NextResponse.json(error.message, { status: 400 });
  return NextResponse.json(data, { status: 200 });
}
