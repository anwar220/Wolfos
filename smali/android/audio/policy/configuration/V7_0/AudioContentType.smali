# classes.dex

.class public final enum Landroid/audio/policy/configuration/V7_0/AudioContentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum AUDIO_CONTENT_TYPE_MOVIE:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum AUDIO_CONTENT_TYPE_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum AUDIO_CONTENT_TYPE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum AUDIO_CONTENT_TYPE_SPEECH:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum AUDIO_CONTENT_TYPE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioContentType;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v1, "AUDIO_CONTENT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v1, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v3, "AUDIO_CONTENT_TYPE_SPEECH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_SPEECH:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v3, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v5, "AUDIO_CONTENT_TYPE_MUSIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v5, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v7, "AUDIO_CONTENT_TYPE_MOVIE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_MOVIE:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v7, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v9, "AUDIO_CONTENT_TYPE_SONIFICATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/audio/policy/configuration/V7_0/AudioContentType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/audio/policy/configuration/V7_0/AudioContentType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioContentType;

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

    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->rawName:Ljava/lang/String;

    return-void
.end method

.method static fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioContentType;
    .registers 6

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioContentType;->values()[Landroid/audio/policy/configuration/V7_0/AudioContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioContentType;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioContentType;
    .registers 2

    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    return-object v0
.end method

.method public static values()[Landroid/audio/policy/configuration/V7_0/AudioContentType;
    .registers 1

    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioContentType;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioContentType;

    return-object v0
.end method


# virtual methods
.method public getRawName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->rawName:Ljava/lang/String;

    return-object v0
.end method
