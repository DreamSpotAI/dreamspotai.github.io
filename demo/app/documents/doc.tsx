export enum SupportedFileType {
    PDF = "PDF",
    TXT = "TXT"
}

interface File {
    fileName: String,
    fileType: SupportedFileType,
    filePath: String,
}

export type DocProp = {
    file: File,
    location: String,
    startDate: Date,
    endDate: Date
}

export function Doc({ file, location, startDate, endDate }: DocProp) {
    return (
        <div className="flex flex-row gap-3 w-full p-5 bg-green">
            <img className="h-full aspect-auto object-cover" src={
                (() => {
                    switch (file.fileType) {
                        case SupportedFileType.PDF:
                            return "app/documents/assets/pdf.svg";

                        case SupportedFileType.TXT:
                            return "app/documents/assets/txt.svg";

                        default:
                            return "";
                    }
                })()
            } alt="document type" />
            <div className="flex flex-col gap-2 flex-1">
                <p className="before:mr-2 before:align-middle before:inline-block before:w-6 before:h-6 before:bg-[url(app/documents/assets/position.svg)] before:bg-no-repeat before:bg-cover">{file.fileName} - {location}</p>
                <p className="before:mr-2 before:align-middle before:inline-block before:w-6 before:h-6 before:bg-[url(app/documents/assets/date.svg)] before:bg-no-repeat before:bg-cover">
                    <time dateTime={startDate.toDateString()}>{startDate.toDateString()}</time>
                    -
                    <time dateTime={endDate.toDateString()}>{endDate.toDateString()}</time>
                </p>
            </div>
            <a className="h-full aspect-square ml-auto bg-[url(app/documents/assets/link.svg)] bg-no-repeat bg-cover" href={file.filePath.toString()} target="_blank" rel="noopener noreferrer"></a>
        </div>
    )
}