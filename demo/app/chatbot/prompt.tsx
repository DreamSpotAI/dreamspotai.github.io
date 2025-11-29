import botPng from "./assets/bot.png"

type PromptProps = {
    isUser: Boolean
}

export function Prompt({ isUser }: PromptProps) {
    return (
        <div className={
            isUser ? "w-full flex flex-row-reverse gap-2" : "w-full flex flex-row gap-2"
        }>
            <img className="w-15 h-15 object-cover rounded-full" src={
                isUser ? "/user.jpeg" : botPng
            } alt="User icon" />
            <div className={
                isUser ? "w-2/5 min-h-40 bg-gray-400 ml-auto" : "w-2/5 min-h-40 bg-gray-400"
            }>
            </div>
        </div>
    )
}