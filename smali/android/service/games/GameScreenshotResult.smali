# classes3.dex

.class public final Landroid/service/games/GameScreenshotResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/GameScreenshotResult$GameScreenshotStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameScreenshotResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final GAME_SCREENSHOT_ERROR_INTERNAL_ERROR:I = 0x1

.field public static final GAME_SCREENSHOT_SUCCESS:I


# instance fields
.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/games/GameScreenshotResult$1;

    invoke-direct {v0}, Landroid/service/games/GameScreenshotResult$1;-><init>()V

    sput-object v0, Landroid/service/games/GameScreenshotResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/service/games/GameScreenshotResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/games/GameScreenshotResult;-><init>(I)V

    return-void
.end method

.method public static createInternalErrorResult()Landroid/service/games/GameScreenshotResult;
    .registers 2

    new-instance v0, Landroid/service/games/GameScreenshotResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/service/games/GameScreenshotResult;-><init>(I)V

    return-object v0
.end method

.method public static createSuccessResult()Landroid/service/games/GameScreenshotResult;
    .registers 2

    new-instance v0, Landroid/service/games/GameScreenshotResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/games/GameScreenshotResult;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/service/games/GameScreenshotResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/service/games/GameScreenshotResult;

    iget v3, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    iget v4, v1, Landroid/service/games/GameScreenshotResult;->mStatus:I

    if-ne v3, v4, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameScreenshotResult{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/service/games/GameScreenshotResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
