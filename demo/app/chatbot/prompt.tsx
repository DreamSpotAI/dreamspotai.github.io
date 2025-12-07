import botPng from "./assets/bot.png"

export type PromptProps = {
    isUser: Boolean
    text: String
    isThinking?: Boolean
}

export function Prompt({ isUser, text }: PromptProps) {
    return (
        <div className={
            isUser ? "w-full flex flex-row-reverse gap-2" : "w-full flex flex-row gap-2"
        }>
            <img className="w-15 h-15 object-cover rounded-full" src={
                isUser ? "/user.jpeg" : botPng
            } />
            <div className={
                isUser ? "w-1/2 p-2 min-h-40  ml-auto bg-gray" : "w-1/2 p-2 min-h-40 bg-gray"
            }>
                <p className="overflow-y-hidden break-all" dangerouslySetInnerHTML={{ __html: text }}></p>
            </div>
        </div>
    )
}