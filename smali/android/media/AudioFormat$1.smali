# classes2.dex

.class Landroid/media/AudioFormat$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioFormat;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioFormat;
    .registers 4

    new-instance v0, Landroid/media/AudioFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;Landroid/media/AudioFormat-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioFormat;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/AudioFormat;
    .registers 3

    new-array v0, p1, [Landroid/media/AudioFormat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$1;->newArray(I)[Landroid/media/AudioFormat;

    move-result-object p1

    return-object p1
.end method
