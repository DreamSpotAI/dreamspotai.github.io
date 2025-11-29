import type { Route } from "./+types/home";
import { Documents } from "../documents/documents";

export const meta: Route.MetaFunction = ({ }: Route.MetaArgs) => [
    { title: "Documents - DreamSpotAI" },
    { name: "description", content: "Access all your saved documents" },
]

export default function Home() {
    return <Documents userName={"Laura"} destination={"Japan"} />;
}
