# classes.dex

.class public final Landroid/bluetooth/OobData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/OobData$ClassicBuilder;,
        Landroid/bluetooth/OobData$LeBuilder;,
        Landroid/bluetooth/OobData$LeFlag;,
        Landroid/bluetooth/OobData$LeRole;
    }
.end annotation


# static fields
.field public static final CLASS_OF_DEVICE_OCTETS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONFIRMATION_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_ADDRESS_OCTETS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_APPEARANCE_OCTETS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_DEVICE_FLAG_OCTETS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_DEVICE_ROLE_BOTH_PREFER_CENTRAL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_DEVICE_ROLE_BOTH_PREFER_PERIPHERAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_DEVICE_ROLE_CENTRAL_ONLY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_DEVICE_ROLE_OCTETS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_DEVICE_ROLE_PERIPHERAL_ONLY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_FLAG_BREDR_NOT_SUPPORTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_FLAG_GENERAL_DISCOVERY_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_FLAG_LIMITED_DISCOVERY_MODE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_FLAG_SIMULTANEOUS_CONTROLLER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_FLAG_SIMULTANEOUS_HOST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_TK_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OOB_LENGTH_OCTETS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RANDOMIZER_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OobData"


# instance fields
.field private mClassOfDevice:[B

.field private final mClassicLength:[B

.field private final mConfirmationHash:[B

.field private final mDeviceAddressWithType:[B

.field private mDeviceName:[B

.field private mLeAppearance:[B

.field private final mLeDeviceRole:I

.field private mLeFlags:I

.field private mLeTemporaryKey:[B

.field private mRandomizerHash:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetmClassOfDevice(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeAppearance(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeFlags(Landroid/bluetooth/OobData;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeTemporaryKey(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClassOfDevice(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeAppearance(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeFlags(Landroid/bluetooth/OobData;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeTemporaryKey(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/OobData$1;

    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_62

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_6e

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return-void

    nop

    :array_62
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6e
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>([BI[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_30

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3c

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    iput-object p1, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    iput p2, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    iput-object p3, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    return-void

    nop

    :array_30
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3c
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor <init>([BI[BLandroid/bluetooth/OobData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/OobData;-><init>([BI[B)V

    return-void
.end method

.method private constructor <init>([B[B[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_2e

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3a

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    iput-object p1, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    iput-object p2, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    iput-object p3, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    return-void

    :array_2e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3a
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor <init>([B[B[BLandroid/bluetooth/OobData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/OobData;-><init>([B[B[B)V

    return-void
.end method

.method private toHexString(B)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-direct {p0, v0}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toHexString(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-direct {p0, v0}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toHexString([B)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_2a

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClassOfDevice()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-object v0
.end method

.method public getClassicLength()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    return-object v0
.end method

.method public getConfirmationHash()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    return-object v0
.end method

.method public getDeviceAddressWithType()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    return-object v0
.end method

.method public getDeviceName()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-object v0
.end method

.method public getLeAppearance()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-object v0
.end method

.method public getLeDeviceRole()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    return v0
.end method

.method public getLeFlags()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return v0
.end method

.method public getLeTemporaryKey()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-object v0
.end method

.method public getRandomizerHash()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OobData: \n\tDevice Address With Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tRandomizer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tDevice Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tOobData Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tClass of Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Device Role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Temporary Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Appearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
