# classes.dex

.class public final Landroid/bluetooth/BluetoothHapPresetInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsAvailable:Z

.field private mIsWritable:Z

.field private mPresetIndex:I

.field private mPresetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothHapPresetInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHapPresetInfo$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHapPresetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    iput p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    iput-object p2, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    iput-boolean p4, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothHapPresetInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapPresetInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    return v0
.end method

.method public isWritable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
