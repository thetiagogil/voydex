import { getAbilities } from "@/services/abilities";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getAbilities();
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data) return NextResponse.json({ error: "Not data" }, { status: 404 });
  return NextResponse.json(data, { status: 200 });
}
