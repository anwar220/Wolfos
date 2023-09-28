# classes.dex

.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mCodecId:J

.field private mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChannel(Landroid/bluetooth/BluetoothLeBroadcastChannel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "channel cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const-string v1, "CodecSpecificConfig is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const-string v1, "ContentMetadata is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v6, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;-><init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSubgroup-IA;)V

    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have at least one channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearChannel()Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public setCodecId(J)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    return-object p0
.end method

.method public setCodecSpecificConfig(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "codecSpecificConfig cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object p0
.end method

.method public setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "contentMetadata cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object p0
.end method
