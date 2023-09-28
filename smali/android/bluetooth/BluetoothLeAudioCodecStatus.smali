# classes.dex

.class public final Landroid/bluetooth/BluetoothLeAudioCodecStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_LE_AUDIO_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.extra.LE_AUDIO_CODEC_STATUS"


# instance fields
.field private final mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field private final mInputCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field private final mOutputCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutputCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    iput-object p4, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    iput-object p5, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    iput-object p6, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    sget-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothLeAudioCodecStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private isCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1e

    return v2

    :cond_1e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_30

    return v2

    :cond_30
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_42

    return v2

    :cond_42
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_54

    return v2

    :cond_54
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v1

    if-lt v0, v1, :cond_6e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v1

    if-le v0, v1, :cond_6f

    :cond_6e
    return v2

    :cond_6f
    const/4 v0, 0x1

    return v0
.end method

.method private static sameCapabilities(Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_15

    return v0

    :cond_15
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    nop

    :goto_47
    return v1

    :cond_48
    return v1
.end method

.method public getInputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    return-object v0
.end method

.method public getInputCodecLocalCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    nop

    :goto_a
    return-object v0
.end method

.method public getInputCodecSelectableCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    nop

    :goto_a
    return-object v0
.end method

.method public getOutputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    return-object v0
.end method

.method public getOutputCodecLocalCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    nop

    :goto_a
    return-object v0
.end method

.method public getOutputCodecSelectableCapabilities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    nop

    :goto_a
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInputCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->isCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    goto :goto_a

    :cond_1f
    return v0
.end method

.method public isOutputCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->isCodecConfigSelectable(Landroid/bluetooth/BluetoothLeAudioCodecConfig;Landroid/bluetooth/BluetoothLeAudioCodecConfig;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    goto :goto_a

    :cond_1f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mInputCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInputCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInputCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mInputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->mOutputCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
