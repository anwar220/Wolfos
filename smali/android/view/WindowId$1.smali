# classes3.dex

.class Landroid/view/WindowId$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/WindowId;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowId;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Landroid/view/WindowId;

    invoke-direct {v1, v0}, Landroid/view/WindowId;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/WindowId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/WindowId;
    .registers 3

    new-array v0, p1, [Landroid/view/WindowId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/WindowId$1;->newArray(I)[Landroid/view/WindowId;

    move-result-object p1

    return-object p1
.end method
