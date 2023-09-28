# classes.dex

.class public final Landroid/bluetooth/BluetoothLeCall;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeCall$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_OUTGOING_CALL:I = 0x1

.field public static final FLAG_WITHHELD_BY_NETWORK:I = 0x4

.field public static final FLAG_WITHHELD_BY_SERVER:I = 0x2

.field public static final STATE_ACTIVE:I = 0x3

.field public static final STATE_ALERTING:I = 0x2

.field public static final STATE_DIALING:I = 0x1

.field public static final STATE_INCOMING:I = 0x0

.field public static final STATE_LOCALLY_AND_REMOTELY_HELD:I = 0x6

.field public static final STATE_LOCALLY_HELD:I = 0x4

.field public static final STATE_REMOTELY_HELD:I = 0x5


# instance fields
.field private mCallFlags:I

.field private mFriendlyName:Ljava/lang/String;

.field private mState:I

.field private mUri:Ljava/lang/String;

.field private mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothLeCall$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeCall$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeCall;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeCall;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeCall;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    iget-object v0, p1, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iget-object v0, p1, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iget v0, p1, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iget v0, p1, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothLeCall-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iput p4, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iput p5, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothLeCall;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    iget-object v4, v2, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    iget v4, v2, Landroid/bluetooth/BluetoothLeCall;->mState:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    iget v4, v2, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    if-ne v3, v4, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    return v0

    :cond_42
    :goto_42
    return v1
.end method

.method public getCallFlags()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIncomingCall()Z
    .registers 3

    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCall;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCall;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeCall;->mCallFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
