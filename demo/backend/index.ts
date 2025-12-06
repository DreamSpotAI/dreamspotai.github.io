import { GoogleGenAI } from "@google/genai";
import express, { type Request, type Response } from 'express';
import cors from 'cors';
import 'dotenv/config';

const GEMINI_API_KEY = process.env.GEMINI_API_KEY;
if (!GEMINI_API_KEY) {
    console.error("No API KEY INSERTED");
    process.exit(1);
}

const ai = new GoogleGenAI({ apiKey: GEMINI_API_KEY });
const model: string = "gemini-2.5-flash";

const app = express();
const port: number = 3001;

interface ChatRequest {
    message: string;
}


app.use(cors({
    origin: 'http://localhost:5173'
}));
app.use(express.json());

app.post('/api/chat', async (req: Request<{}, {}, ChatRequest>, res: Response) => {
    const { message } = req.body;

    if (!message || typeof message !== 'string') {
        return res.status(400).json({ error: "not valid MSG" });
    }

    try {
        const response = await ai.models.generateContent({
            model: model,
            contents: [{ role: "user", parts: [{ text: message }] }],
        });

        const textResponse: string | undefined = response.text?.trim();

        if (textResponse) {
            res.json({ response: textResponse });
        } else {
            res.status(500).json({ error: "Gemini is not available" });
        }
    } catch (error) {
        console.error("Gemini error:", (error as Error).message);
        res.status(500).json({ error: "Cannot call gemini api." });
    }
});

app.listen(port, () => {
    console.log(`Server listening on ${port}`);
});
