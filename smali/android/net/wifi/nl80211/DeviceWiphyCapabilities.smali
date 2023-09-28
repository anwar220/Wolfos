# classes2.dex

.class public final Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeviceWiphyCapabilities"


# instance fields
.field private m80211acSupported:Z

.field private m80211axSupported:Z

.field private m80211beSupported:Z

.field private m80211nSupported:Z

.field private mChannelWidth160MhzSupported:Z

.field private mChannelWidth320MhzSupported:Z

.field private mChannelWidth80p80MhzSupported:Z

.field private mMaxNumberRxSpatialStreams:I

.field private mMaxNumberTxSpatialStreams:I


# direct methods
.method static bridge synthetic -$$Nest$fputm80211acSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm80211axSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm80211beSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm80211nSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidth160MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidth320MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidth80p80MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxNumberRxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxNumberTxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    iput v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

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
    instance-of v1, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    iget v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    iget v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    return v0
.end method

.method public getMaxNumberRxSpatialStreams()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    return v0
.end method

.method public getMaxNumberTxSpatialStreams()I
    .registers 2

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChannelWidthSupported(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChannelWidthSupported called with invalid channel width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceWiphyCapabilities"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_1e  #0x5
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    return v0

    :pswitch_21  #0x4
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    return v0

    :pswitch_24  #0x3
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    return v0

    :pswitch_27  #0x2
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-nez v2, :cond_33

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-nez v2, :cond_33

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz v2, :cond_34

    :cond_33
    move v0, v1

    :cond_34
    return v0

    :pswitch_35  #0x1
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    if-nez v2, :cond_45

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-nez v2, :cond_45

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-nez v2, :cond_45

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz v2, :cond_46

    :cond_45
    move v0, v1

    :cond_46
    return v0

    :pswitch_47  #0x0
    return v1

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_47  #00000000
        :pswitch_35  #00000001
        :pswitch_27  #00000002
        :pswitch_24  #00000003
        :pswitch_21  #00000004
        :pswitch_1e  #00000005
    .end packed-switch
.end method

.method public isWifiStandardSupported(I)Z
    .registers 4

    packed-switch p1, :pswitch_data_2c

    :pswitch_3  #0x2, 0x3, 0x7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiStandardSupported called with invalid standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceWiphyCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :pswitch_1d  #0x8
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    return v0

    :pswitch_20  #0x6
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    return v0

    :pswitch_23  #0x5
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    return v0

    :pswitch_26  #0x4
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    return v0

    :pswitch_29  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_3  #00000002
        :pswitch_3  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_3  #00000007
        :pswitch_1d  #00000008
    .end packed-switch
.end method

.method public setChannelWidthSupported(IZ)V
    .registers 5

    packed-switch p1, :pswitch_data_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChannelWidthSupported called with Invalid channel width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceWiphyCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :pswitch_1c  #0x5
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    goto :goto_25

    :pswitch_1f  #0x4
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    goto :goto_25

    :pswitch_22  #0x3
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    nop

    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x3
        :pswitch_22  #00000003
        :pswitch_1f  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method

.method public setMaxNumberRxSpatialStreams(I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    return-void
.end method

.method public setMaxNumberTxSpatialStreams(I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    return-void
.end method

.method public setWifiStandardSupport(IZ)V
    .registers 5

    packed-switch p1, :pswitch_data_2a

    :pswitch_3  #0x7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiStandardSupport called with invalid standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceWiphyCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :pswitch_1c  #0x8
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    goto :goto_28

    :pswitch_1f  #0x6
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    goto :goto_28

    :pswitch_22  #0x5
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    goto :goto_28

    :pswitch_25  #0x4
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    nop

    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_25  #00000004
        :pswitch_22  #00000005
        :pswitch_1f  #00000006
        :pswitch_3  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m80211nSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    const-string v3, "Yes"

    const-string v4, "No"

    if-eqz v2, :cond_15

    move-object v2, v3

    goto :goto_16

    :cond_15
    move-object v2, v4

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m80211acSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-eqz v2, :cond_25

    move-object v2, v3

    goto :goto_26

    :cond_25
    move-object v2, v4

    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m80211axSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-eqz v2, :cond_35

    move-object v2, v3

    goto :goto_36

    :cond_35
    move-object v2, v4

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m80211beSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz v2, :cond_45

    move-object v2, v3

    goto :goto_46

    :cond_45
    move-object v2, v4

    :goto_46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mChannelWidth160MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    if-eqz v2, :cond_55

    move-object v2, v3

    goto :goto_56

    :cond_55
    move-object v2, v4

    :goto_56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mChannelWidth80p80MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    if-eqz v2, :cond_65

    move-object v2, v3

    goto :goto_66

    :cond_65
    move-object v2, v4

    :goto_66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mChannelWidth320MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    if-eqz v2, :cond_74

    goto :goto_75

    :cond_74
    move-object v3, v4

    :goto_75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMaxNumberTxSpatialStreams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mMaxNumberRxSpatialStreams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
