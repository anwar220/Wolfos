# classes2.dex

.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    const/16 v0, 0x3009

    const-string v1, "audio/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3008

    const-string v2, "audio/x-wav"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb901

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb902

    const-string v2, "audio/ogg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb903

    const-string v2, "audio/aac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb906

    const-string v2, "audio/flac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3007

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb983

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300b

    const-string v1, "video/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb982

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb984

    const-string v1, "video/3gpp"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v1, "video/3gpp2"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300a

    const-string v1, "video/avi"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb981

    const-string v1, "video/x-ms-wmv"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300c

    const-string v1, "video/x-ms-asf"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3801

    const-string v2, "image/jpeg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3807

    const-string v2, "image/gif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380b

    const-string v2, "image/png"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3804

    const-string v2, "image/x-ms-bmp"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3812

    const-string v2, "image/heif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3811

    const-string v2, "image/x-adobe-dng"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380d

    const-string v2, "image/tiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-canon-cr2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-nikon-nrw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-sony-arw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-panasonic-rw2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-olympus-orf"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-pentax-pef"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-samsung-srw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3802

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v2, "image/x-nikon-nef"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380f

    const-string v2, "image/jp2"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3810

    const-string v2, "image/jpx"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba11

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba14

    const-string v2, "audio/x-scpls"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba10

    const-string v2, "application/vnd.ms-wpl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba13

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3004

    const-string v1, "text/plain"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3005

    const-string v1, "text/html"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba82

    const-string v1, "text/xml"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba83

    const-string v1, "application/msword"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba85

    const-string v1, "application/vnd.ms-excel"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba86

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFileType(ILjava/lang/String;)V
    .registers 4

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_13

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_14

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_14
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_21

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_9

    return v0

    :cond_9
    invoke-static {p0}, Landroid/media/MediaFile;->getFormatCodeForFile(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFormatCodeForFile(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFormatCodeForMimeType(Ljava/lang/String;)I
    .registers 4

    const/16 v0, 0x3000

    if-nez p0, :cond_5

    return v0

    :cond_5
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_14
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_25
    const-string v2, "audio/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    const v0, 0xb900

    return v0

    :cond_31
    const-string v2, "video/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const v0, 0xb980

    return v0

    :cond_3d
    const-string v2, "image/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    const/16 v0, 0x3800

    return v0

    :cond_48
    return v0
.end method

.method public static getMimeType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/octet-stream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    invoke-static {p1}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/media/MediaFile;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    move-object v2, v1

    goto :goto_12

    :cond_10
    const-string v2, "application/octet-stream"

    :goto_12
    return-object v2
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    const-string v1, "application/octet-stream"

    :goto_12
    return-object v1
.end method

.method public static isAudioFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isAudioMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDocumentMimeType(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    :cond_12
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2b4

    :cond_20
    goto/16 :goto_2af

    :sswitch_22
    const-string v5, "application/vnd.oasis.opendocument.database"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x11

    goto/16 :goto_2af

    :sswitch_2e
    const-string v5, "application/vnd.ms-excel.addin.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x5

    goto/16 :goto_2af

    :sswitch_39
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x20

    goto/16 :goto_2af

    :sswitch_45
    const-string v5, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xb

    goto/16 :goto_2af

    :sswitch_51
    const-string v5, "application/vnd.stardivision.writer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2b

    goto/16 :goto_2af

    :sswitch_5d
    const-string v5, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x17

    goto/16 :goto_2af

    :sswitch_69
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1e

    goto/16 :goto_2af

    :sswitch_75
    const-string v5, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1a

    goto/16 :goto_2af

    :sswitch_81
    const-string v5, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x15

    goto/16 :goto_2af

    :sswitch_8d
    const-string v5, "application/vnd.sun.xml.impress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x31

    goto/16 :goto_2af

    :sswitch_99
    const-string v5, "application/vnd.ms-word.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xf

    goto/16 :goto_2af

    :sswitch_a5
    const-string v5, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x14

    goto/16 :goto_2af

    :sswitch_b1
    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x23

    goto/16 :goto_2af

    :sswitch_bd
    const-string v5, "application/msword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v4, v3

    goto/16 :goto_2af

    :sswitch_c8
    const-string v5, "application/vnd.stardivision.impress-packed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x28

    goto/16 :goto_2af

    :sswitch_d4
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1f

    goto/16 :goto_2af

    :sswitch_e0
    const-string v5, "application/vnd.stardivision.impress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x27

    goto/16 :goto_2af

    :sswitch_ec
    const-string v5, "application/vnd.stardivision.writer-global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2c

    goto/16 :goto_2af

    :sswitch_f8
    const-string v5, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x13

    goto/16 :goto_2af

    :sswitch_104
    const-string v5, "application/vnd.ms-powerpoint.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xd

    goto/16 :goto_2af

    :sswitch_110
    const-string v5, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x18

    goto/16 :goto_2af

    :sswitch_11c
    const-string v5, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xa

    goto/16 :goto_2af

    :sswitch_128
    const-string v5, "application/vnd.oasis.opendocument.presentation-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x16

    goto/16 :goto_2af

    :sswitch_134
    const-string v5, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x6

    goto/16 :goto_2af

    :sswitch_13f
    const-string v5, "application/vnd.ms-excel"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x4

    goto/16 :goto_2af

    :sswitch_14a
    const-string v5, "application/vnd.sun.xml.impress.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x32

    goto/16 :goto_2af

    :sswitch_156
    const-string v5, "application/vnd.sun.xml.writer.global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x35

    goto/16 :goto_2af

    :sswitch_162
    const-string v5, "application/x-mspublisher"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x37

    goto/16 :goto_2af

    :sswitch_16e
    const-string v5, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1c

    goto/16 :goto_2af

    :sswitch_17a
    const-string v5, "application/vnd.sun.xml.math"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x33

    goto/16 :goto_2af

    :sswitch_186
    const-string v5, "application/vnd.sun.xml.draw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2f

    goto/16 :goto_2af

    :sswitch_192
    const-string v5, "application/vnd.sun.xml.calc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2d

    goto/16 :goto_2af

    :sswitch_19e
    const-string v5, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x8

    goto/16 :goto_2af

    :sswitch_1aa
    const-string v5, "application/vnd.oasis.opendocument.formula"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x12

    goto/16 :goto_2af

    :sswitch_1b6
    const-string v5, "application/vnd.sun.xml.draw.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x30

    goto/16 :goto_2af

    :sswitch_1c2
    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x22

    goto/16 :goto_2af

    :sswitch_1ce
    const-string v5, "application/vnd.ms-powerpoint"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x9

    goto/16 :goto_2af

    :sswitch_1da
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1d

    goto/16 :goto_2af

    :sswitch_1e6
    const-string v5, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xc

    goto/16 :goto_2af

    :sswitch_1f2
    const-string v5, "application/rtf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x3

    goto/16 :goto_2af

    :sswitch_1fd
    const-string v5, "application/pdf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x2

    goto/16 :goto_2af

    :sswitch_208
    const-string v5, "application/vnd.ms-word.document.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0xe

    goto/16 :goto_2af

    :sswitch_214
    const-string v5, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x1b

    goto/16 :goto_2af

    :sswitch_220
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x21

    goto/16 :goto_2af

    :sswitch_22c
    const-string v5, "application/vnd.sun.xml.calc.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2e

    goto/16 :goto_2af

    :sswitch_238
    const-string v5, "application/vnd.sun.xml.writer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x34

    goto/16 :goto_2af

    :sswitch_244
    const-string v5, "application/vnd.ms-excel.sheet.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x7

    goto :goto_2af

    :sswitch_24e
    const-string v5, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x19

    goto :goto_2af

    :sswitch_259
    const-string v5, "application/vnd.sun.xml.writer.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x36

    goto :goto_2af

    :sswitch_264
    const-string v5, "application/vnd.stardivision.chart"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x25

    goto :goto_2af

    :sswitch_26f
    const-string v5, "application/vnd.oasis.opendocument.chart"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x10

    goto :goto_2af

    :sswitch_27a
    const-string v5, "application/epub+zip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v4, v0

    goto :goto_2af

    :sswitch_284
    const-string v5, "application/vnd.stardivision.math"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x2a

    goto :goto_2af

    :sswitch_28f
    const-string v5, "application/vnd.stardivision.mail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x29

    goto :goto_2af

    :sswitch_29a
    const-string v5, "application/vnd.stardivision.draw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x26

    goto :goto_2af

    :sswitch_2a5
    const-string v5, "application/vnd.stardivision.calc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v4, 0x24

    :goto_2af
    packed-switch v4, :pswitch_data_396

    return v0

    :pswitch_2b3  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
    return v3

    :sswitch_data_2b4
    .sparse-switch
        -0x7f44465d -> :sswitch_2a5
        -0x7f43936e -> :sswitch_29a
        -0x7f3fbafb -> :sswitch_28f
        -0x7f3fb9aa -> :sswitch_284
        -0x77b8a693 -> :sswitch_27a
        -0x6a428d87 -> :sswitch_26f
        -0x69417db0 -> :sswitch_264
        -0x68255665 -> :sswitch_259
        -0x667e94ce -> :sswitch_24e
        -0x62888ad2 -> :sswitch_244
        -0x610e9853 -> :sswitch_238
        -0x5ed1e487 -> :sswitch_22c
        -0x59c3e1a9 -> :sswitch_220
        -0x4e7ea34b -> :sswitch_214
        -0x4d189f3b -> :sswitch_208
        -0x4a68144d -> :sswitch_1fd
        -0x4a680adb -> :sswitch_1f2
        -0x4151d343 -> :sswitch_1e6
        -0x3ffe58cb -> :sswitch_1da
        -0x3fe2a28f -> :sswitch_1ce
        -0x3ea35d2d -> :sswitch_1c2
        -0x3d99ba96 -> :sswitch_1b6
        -0x38434ebf -> :sswitch_1aa
        -0x3464229d -> :sswitch_19e
        -0x2e7d3bf1 -> :sswitch_192
        -0x2e7c8902 -> :sswitch_186
        -0x2e78af3e -> :sswitch_17a
        -0x28553dc7 -> :sswitch_16e
        -0x1cb6d53e -> :sswitch_162
        -0x1c904afc -> :sswitch_156
        -0x17a6095d -> :sswitch_14a
        -0x15d566cf -> :sswitch_13f
        -0x11ed9627 -> :sswitch_134
        -0x11654d98 -> :sswitch_128
        -0x901206b -> :sswitch_11c
        -0x6850aa0 -> :sswitch_110
        0x3e26123 -> :sswitch_104
        0x198f4610 -> :sswitch_f8
        0x22098aaf -> :sswitch_ec
        0x27e80391 -> :sswitch_e0
        0x2967ba15 -> :sswitch_d4
        0x2e45be34 -> :sswitch_c8
        0x35ebd34f -> :sswitch_bd
        0x3f3a9e32 -> :sswitch_b1
        0x5218db97 -> :sswitch_a5
        0x5278be24 -> :sswitch_99
        0x527dd1a5 -> :sswitch_8d
        0x55a6501f -> :sswitch_81
        0x57208d5d -> :sswitch_75
        0x5e059df3 -> :sswitch_69
        0x61f85627 -> :sswitch_5d
        0x63c34841 -> :sswitch_51
        0x68571d43 -> :sswitch_45
        0x76d7a0a2 -> :sswitch_39
        0x7cd0cb55 -> :sswitch_2e
        0x7e37ad00 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_2b3  #00000000
        :pswitch_2b3  #00000001
        :pswitch_2b3  #00000002
        :pswitch_2b3  #00000003
        :pswitch_2b3  #00000004
        :pswitch_2b3  #00000005
        :pswitch_2b3  #00000006
        :pswitch_2b3  #00000007
        :pswitch_2b3  #00000008
        :pswitch_2b3  #00000009
        :pswitch_2b3  #0000000a
        :pswitch_2b3  #0000000b
        :pswitch_2b3  #0000000c
        :pswitch_2b3  #0000000d
        :pswitch_2b3  #0000000e
        :pswitch_2b3  #0000000f
        :pswitch_2b3  #00000010
        :pswitch_2b3  #00000011
        :pswitch_2b3  #00000012
        :pswitch_2b3  #00000013
        :pswitch_2b3  #00000014
        :pswitch_2b3  #00000015
        :pswitch_2b3  #00000016
        :pswitch_2b3  #00000017
        :pswitch_2b3  #00000018
        :pswitch_2b3  #00000019
        :pswitch_2b3  #0000001a
        :pswitch_2b3  #0000001b
        :pswitch_2b3  #0000001c
        :pswitch_2b3  #0000001d
        :pswitch_2b3  #0000001e
        :pswitch_2b3  #0000001f
        :pswitch_2b3  #00000020
        :pswitch_2b3  #00000021
        :pswitch_2b3  #00000022
        :pswitch_2b3  #00000023
        :pswitch_2b3  #00000024
        :pswitch_2b3  #00000025
        :pswitch_2b3  #00000026
        :pswitch_2b3  #00000027
        :pswitch_2b3  #00000028
        :pswitch_2b3  #00000029
        :pswitch_2b3  #0000002a
        :pswitch_2b3  #0000002b
        :pswitch_2b3  #0000002c
        :pswitch_2b3  #0000002d
        :pswitch_2b3  #0000002e
        :pswitch_2b3  #0000002f
        :pswitch_2b3  #00000030
        :pswitch_2b3  #00000031
        :pswitch_2b3  #00000032
        :pswitch_2b3  #00000033
        :pswitch_2b3  #00000034
        :pswitch_2b3  #00000035
        :pswitch_2b3  #00000036
        :pswitch_2b3  #00000037
    .end packed-switch
.end method

.method public static isDrmFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-android-drm-fl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExifMimeType(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPlayListFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isPlayListMimeType(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_50

    :cond_d
    goto :goto_4a

    :sswitch_e
    const-string v1, "application/vnd.ms-wpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_4b

    :sswitch_18
    const-string v1, "audio/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_4b

    :sswitch_22
    const-string v1, "audio/mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_4b

    :sswitch_2c
    const-string v1, "application/vnd.apple.mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_4b

    :sswitch_36
    const-string v1, "application/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_4b

    :sswitch_40
    const-string v1, "audio/x-scpls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_4b

    :goto_4a
    const/4 v0, -0x1

    :goto_4b
    packed-switch v0, :pswitch_data_6a

    return v2

    :pswitch_4f  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5
    return v3

    :sswitch_data_50
    .sparse-switch
        -0x45784127 -> :sswitch_40
        -0x3a5bd08a -> :sswitch_36
        -0x251f4d8b -> :sswitch_2c
        -0x19cb7f6f -> :sswitch_22
        0xfbfd67c -> :sswitch_18
        0x6f9869ad -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4f  #00000000
        :pswitch_4f  #00000001
        :pswitch_4f  #00000002
        :pswitch_4f  #00000003
        :pswitch_4f  #00000004
        :pswitch_4f  #00000005
    .end packed-switch
.end method

.method public static isVideoFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    return-object v2

    :cond_11
    if-eqz p0, :cond_15

    move-object v2, p0

    goto :goto_17

    :cond_15
    const-string v2, "application/octet-stream"

    :goto_17
    return-object v2
.end method
