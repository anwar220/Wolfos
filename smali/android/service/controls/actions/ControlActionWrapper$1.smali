# classes3.dex

.class Landroid/service/controls/actions/ControlActionWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/actions/ControlActionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/controls/actions/ControlActionWrapper;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/actions/ControlActionWrapper;
    .registers 4

    new-instance v0, Landroid/service/controls/actions/ControlActionWrapper;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/service/controls/actions/ControlAction;->createActionFromBundle(Landroid/os/Bundle;)Landroid/service/controls/actions/ControlAction;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/controls/actions/ControlActionWrapper;-><init>(Landroid/service/controls/actions/ControlAction;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/controls/actions/ControlActionWrapper$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/actions/ControlActionWrapper;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/controls/actions/ControlActionWrapper;
    .registers 3

    new-array v0, p1, [Landroid/service/controls/actions/ControlActionWrapper;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/controls/actions/ControlActionWrapper$1;->newArray(I)[Landroid/service/controls/actions/ControlActionWrapper;

    move-result-object p1

    return-object p1
.end method
