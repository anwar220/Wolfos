# classes.dex

.class public final Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapPresetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsAvailable:Z

.field private mIsWritable:Z

.field private mPresetIndex:I

.field private mPresetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    const-string v1, ""

    iput-object v1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    if-ltz p1, :cond_1b

    iput p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    iput-object p2, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preset index for HAP shall be a non-negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the preset name for HAP shall be at least one character long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 6

    new-instance v0, Landroid/bluetooth/BluetoothHapPresetInfo;

    iget v1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothHapPresetInfo;-><init>(ILjava/lang/String;ZZ)V

    return-object v0
.end method

.method public setAvailable(Z)Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    return-object p0
.end method

.method public setWritable(Z)Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    return-object p0
.end method
