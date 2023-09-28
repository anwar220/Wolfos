# classes.dex

.class public final Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChannelIndex:I

.field private mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private mIsSelected:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeBroadcastChannel;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getCodecMetadata()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const-string v1, "codec metadata cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothLeBroadcastChannel;-><init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeBroadcastChannel-IA;)V

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mChannelIndex cannot be -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChannelIndex(I)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channelIndex cannot be -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCodecMetadata(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "codecMetadata cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object p0
.end method

.method public setSelected(Z)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    return-object p0
.end method
