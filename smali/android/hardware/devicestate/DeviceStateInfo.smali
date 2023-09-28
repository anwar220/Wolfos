# classes.dex

.class public final Landroid/hardware/devicestate/DeviceStateInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateInfo$ChangeFlags;
    }
.end annotation


# static fields
.field public static final CHANGED_BASE_STATE:I = 0x2

.field public static final CHANGED_CURRENT_STATE:I = 0x4

.field public static final CHANGED_SUPPORTED_STATES:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/devicestate/DeviceStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final baseState:I

.field public final currentState:I

.field public final supportedStates:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/devicestate/DeviceStateInfo$1;

    invoke-direct {v0}, Landroid/hardware/devicestate/DeviceStateInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/devicestate/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 5

    iget-object v0, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iget v1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    iget v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>([III)V

    return-void
.end method

.method public constructor <init>([III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iput p2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    iput p3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/hardware/devicestate/DeviceStateInfo;)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_d

    or-int/lit8 v0, v0, 0x1

    :cond_d
    iget v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    iget v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    if-eq v1, v2, :cond_15

    or-int/lit8 v0, v0, 0x2

    :cond_15
    iget v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    iget v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    if-eq v1, v2, :cond_1d

    or-int/lit8 v0, v0, 0x4

    :cond_1d
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/devicestate/DeviceStateInfo;

    iget v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    iget v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    iget v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v2, v1

    if-ge v0, v2, :cond_14

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    iget v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
