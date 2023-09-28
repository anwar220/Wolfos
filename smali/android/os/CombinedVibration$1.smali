# classes3.dex

.class Landroid/os/CombinedVibration$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/CombinedVibration;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/CombinedVibration;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    new-instance v1, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v1, p1}, Landroid/os/CombinedVibration$Mono;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    new-instance v1, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v1, p1}, Landroid/os/CombinedVibration$Stereo;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_16
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    new-instance v1, Landroid/os/CombinedVibration$Sequential;

    invoke-direct {v1, p1}, Landroid/os/CombinedVibration$Sequential;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_1f
    const/4 v1, 0x5

    if-ne v0, v1, :cond_39

    invoke-static {}, Landroid/os/CombinedVibrationStub;->getInstance()Landroid/os/CombinedVibrationStub;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/os/CombinedVibrationStub;->createDynamicEffect([III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    return-object v1

    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected combined vibration event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/CombinedVibration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/CombinedVibration;
    .registers 3

    new-array v0, p1, [Landroid/os/CombinedVibration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/CombinedVibration$1;->newArray(I)[Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method
