# classes.dex

.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


# instance fields
.field private final mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mCodecId:J

.field private final mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private final mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iput-object p4, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iput-object p5, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSubgroup-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;-><init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    :goto_3a
    return v1
.end method

.method public getChannels()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    return-object v0
.end method

.method public getCodecId()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    return-wide v0
.end method

.method public getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object v0
.end method

.method public getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object v0
.end method

.method public hasChannelPreference()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
