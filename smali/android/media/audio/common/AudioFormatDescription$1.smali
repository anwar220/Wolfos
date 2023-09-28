# classes2.dex

.class Landroid/media/audio/common/AudioFormatDescription$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioFormatDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioFormatDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioFormatDescription;
    .registers 3

    new-instance v0, Landroid/media/audio/common/AudioFormatDescription;

    invoke-direct {v0}, Landroid/media/audio/common/AudioFormatDescription;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/audio/common/AudioFormatDescription;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioFormatDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioFormatDescription;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/audio/common/AudioFormatDescription;
    .registers 3

    new-array v0, p1, [Landroid/media/audio/common/AudioFormatDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioFormatDescription$1;->newArray(I)[Landroid/media/audio/common/AudioFormatDescription;

    move-result-object p1

    return-object p1
.end method
