# classes4.dex

.class public final enum Lcom/google/android/util/AbstractMessageParser$Token$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/util/AbstractMessageParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# instance fields
.field private stringRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v3, "FORMAT"

    const/4 v4, 0x1

    const-string v5, "format"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v5, "LINK"

    const/4 v6, 0x2

    const-string/jumbo v7, "l"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v5, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v7, "SMILEY"

    const/4 v8, 0x3

    const-string v9, "e"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v7, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v9, "ACRONYM"

    const/4 v10, 0x4

    const-string v11, "a"

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v9, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v11, "MUSIC"

    const/4 v12, 0x5

    const-string/jumbo v13, "m"

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v11, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v13, "GOOGLE_VIDEO"

    const/4 v14, 0x6

    const-string/jumbo v15, "v"

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v13, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v15, "YOUTUBE_VIDEO"

    const/4 v14, 0x7

    const-string/jumbo v12, "yt"

    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v12, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v15, "PHOTO"

    const/16 v14, 0x8

    const-string/jumbo v10, "p"

    invoke-direct {v12, v15, v14, v10}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v10, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v15, "FLICKR"

    const/16 v14, 0x9

    const-string v8, "f"

    invoke-direct {v10, v15, v14, v8}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 2

    const-class v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 1

    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v0}, [Lcom/google/android/util/AbstractMessageParser$Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-object v0
.end method
