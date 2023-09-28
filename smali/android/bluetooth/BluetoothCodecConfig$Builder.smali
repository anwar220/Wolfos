# classes.dex

.class public final Landroid/bluetooth/BluetoothCodecConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBitsPerSample:I

.field private mChannelMode:I

.field private mCodecPriority:I

.field private mCodecSpecific1:J

.field private mCodecSpecific2:J

.field private mCodecSpecific3:J

.field private mCodecSpecific4:J

.field private mCodecType:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothCodecConfig;
    .registers 16

    new-instance v14, Landroid/bluetooth/BluetoothCodecConfig;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    iget-wide v8, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    iget-wide v10, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    iget-wide v12, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    return-object v14
.end method

.method public setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    return-object p0
.end method

.method public setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    return-object p0
.end method

.method public setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    return-object p0
.end method

.method public setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    return-object p0
.end method

.method public setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    return-object p0
.end method

.method public setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    return-object p0
.end method

.method public setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    return-object p0
.end method

.method public setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    return-object p0
.end method

.method public setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    return-object p0
.end method
