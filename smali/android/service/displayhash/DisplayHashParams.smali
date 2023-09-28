# classes3.dex

.class public final Landroid/service/displayhash/DisplayHashParams;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/DisplayHashParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/displayhash/DisplayHashParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBufferSize:Landroid/util/Size;

.field private final mGrayscaleBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/displayhash/DisplayHashParams$1;

    invoke-direct {v0}, Landroid/service/displayhash/DisplayHashParams$1;-><init>()V

    sput-object v0, Landroid/service/displayhash/DisplayHashParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v2

    :goto_18
    iput-object v2, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    iput-boolean v1, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    iput-boolean p2, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferSize()Landroid/util/Size;
    .registers 2

    iget-object v0, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    return-object v0
.end method

.method public isGrayscaleBuffer()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayHashParams { bufferSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grayscaleBuffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    if-eqz v1, :cond_19

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    :cond_19
    return-void
.end method
