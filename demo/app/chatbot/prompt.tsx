import botPng from "./assets/bot.png"

export type PromptProps = {
    isUser: Boolean
    text: String
}

export function Prompt({ isUser, text }: PromptProps) {
    return (
        <div className={
            isUser ? "w-full flex flex-row-reverse gap-2" : "w-full flex flex-row gap-2"
        }>
            <img className="w-15 h-15 object-cover rounded-full" src={
                isUser ? "/user.jpeg" : botPng
            } alt="User icon" />
            <div className={
                isUser ? "w-2/5 p-2 min-h-40  ml-auto bg-gray" : "w-2/5 p-2 min-h-40 bg-gray"
            }>
                <p className="overflow-y-hidden break-all">{text}</p>
            </div>
        </div>
    )
}