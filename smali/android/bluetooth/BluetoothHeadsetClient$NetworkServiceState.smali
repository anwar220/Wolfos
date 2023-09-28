# classes.dex

.class public final Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkServiceState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mIsRoaming:Z

.field private final mIsServiceAvailable:Z

.field private final mOperatorName:Ljava/lang/String;

.field private final mSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean p2, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    iput-boolean p5, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    return v0
.end method

.method public isRoaming()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    return v0
.end method

.method public isServiceAvailable()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
