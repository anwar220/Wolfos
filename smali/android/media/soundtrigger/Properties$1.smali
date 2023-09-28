# classes2.dex

.class Landroid/media/soundtrigger/Properties$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/soundtrigger/Properties;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger/Properties;
    .registers 3

    new-instance v0, Landroid/media/soundtrigger/Properties;

    invoke-direct {v0}, Landroid/media/soundtrigger/Properties;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/soundtrigger/Properties;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/soundtrigger/Properties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger/Properties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/soundtrigger/Properties;
    .registers 3

    new-array v0, p1, [Landroid/media/soundtrigger/Properties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/soundtrigger/Properties$1;->newArray(I)[Landroid/media/soundtrigger/Properties;

    move-result-object p1

    return-object p1
.end method
