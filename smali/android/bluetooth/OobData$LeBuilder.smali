# classes.dex

.class public final Landroid/bluetooth/OobData$LeBuilder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/OobData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeBuilder"
.end annotation


# instance fields
.field private mConfirmationHash:[B

.field private final mDeviceAddressWithType:[B

.field private mDeviceName:[B

.field private mLeAppearance:[B

.field private final mLeDeviceRole:I

.field private mLeFlags:I

.field private mLeTemporaryKey:[B

.field private mRandomizerHash:[B


# direct methods
.method public constructor <init>([B[BI)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_4a

    iput-object v2, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeAppearance:[B

    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-ne v0, v1, :cond_41

    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    array-length v0, p2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_39

    iput-object p2, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceAddressWithType:[B

    if-ltz p3, :cond_31

    const/4 v0, 0x3

    if-gt p3, v0, :cond_31

    iput p3, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeDeviceRole:I

    return-void

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leDeviceRole must be a valid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 7 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_4a
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
.end method


# virtual methods
.method public build()Landroid/bluetooth/OobData;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/bluetooth/OobData;

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceAddressWithType:[B

    iget v2, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeDeviceRole:I

    iget-object v3, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/OobData;-><init>([BI[BLandroid/bluetooth/OobData-IA;)V

    nop

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    if-eqz v1, :cond_12

    goto :goto_16

    :cond_12
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeTemporaryKey(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_16
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeTemporaryKey(Landroid/bluetooth/OobData;[B)V

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeAppearance:[B

    if-eqz v1, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeAppearance(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_22
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeAppearance(Landroid/bluetooth/OobData;[B)V

    iget v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeFlags(Landroid/bluetooth/OobData;)I

    move-result v1

    :goto_30
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeFlags(Landroid/bluetooth/OobData;I)V

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    if-eqz v1, :cond_38

    goto :goto_3c

    :cond_38
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_3c
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V

    return-object v0
.end method

.method public setDeviceName([B)Landroid/bluetooth/OobData$LeBuilder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    return-object p0
.end method

.method public setLeFlags(I)Landroid/bluetooth/OobData$LeBuilder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_8

    const/4 v0, 0x4

    if-gt p1, v0, :cond_8

    iput p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leFlags must be a valid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLeTemporaryKey([B)Landroid/bluetooth/OobData$LeBuilder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leTemporaryKey must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRandomizerHash([B)Landroid/bluetooth/OobData$LeBuilder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "randomizerHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
