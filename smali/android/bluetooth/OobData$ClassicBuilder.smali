# classes.dex

.class public final Landroid/bluetooth/OobData$ClassicBuilder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/OobData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassicBuilder"
.end annotation


# instance fields
.field private mClassOfDevice:[B

.field private final mClassicLength:[B

.field private mConfirmationHash:[B

.field private final mDeviceAddressWithType:[B

.field private mDeviceName:[B

.field private mRandomizerHash:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_46

    iput-object v2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-ne v0, v1, :cond_3e

    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    iput-object p2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassicLength:[B

    array-length v0, p3

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2e

    iput-object p3, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceAddressWithType:[B

    return-void

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddressWithType must be 7 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classicLength must be 2 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_46
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

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassicLength:[B

    iget-object v2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceAddressWithType:[B

    iget-object v3, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/OobData;-><init>([B[B[BLandroid/bluetooth/OobData-IA;)V

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    if-eqz v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_15
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    if-eqz v1, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmClassOfDevice(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_21
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmClassOfDevice(Landroid/bluetooth/OobData;[B)V

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V

    return-object v0
.end method

.method public setClassOfDevice([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classOfDevice must be 3 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeviceName([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    return-object p0
.end method

.method public setRandomizerHash([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "randomizerHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
