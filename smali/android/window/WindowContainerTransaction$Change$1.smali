# classes4.dex

.class Landroid/window/WindowContainerTransaction$Change$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction$Change;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/WindowContainerTransaction$Change;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/window/WindowContainerTransaction$Change;
    .registers 3

    new-instance v0, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v0, p1}, Landroid/window/WindowContainerTransaction$Change;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$Change$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/window/WindowContainerTransaction$Change;
    .registers 3

    new-array v0, p1, [Landroid/window/WindowContainerTransaction$Change;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/window/WindowContainerTransaction$Change$1;->newArray(I)[Landroid/window/WindowContainerTransaction$Change;

    move-result-object p1

    return-object p1
.end method
