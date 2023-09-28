# classes3.dex

.class Landroid/os/FabricatedOverlayInternalEntry$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FabricatedOverlayInternalEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/FabricatedOverlayInternalEntry;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 3

    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/FabricatedOverlayInternalEntry;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/FabricatedOverlayInternalEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/FabricatedOverlayInternalEntry;
    .registers 3

    new-array v0, p1, [Landroid/os/FabricatedOverlayInternalEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/FabricatedOverlayInternalEntry$1;->newArray(I)[Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    return-object p1
.end method
